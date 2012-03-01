/*
 * This source code and application is provided to the public for educational and private use.
 * This application may not be used commercially or for monetary gain.
 * openIPSW is a frontend for downloading IPSW files (iDevice firmware) directly from Apple's public servers.
 * Any IPSW that are not provided *as is* by Apple have not been included in this application due to legal issues surrounding code protected by copyright. 
 * I have tried to include as much documentation as possible for the benefit of learning.
 * 
 * Original idea from ipswDownloader (Mac) by @iKorich.
 * Created by Ryan Burke, Cody Scott, and Lucca.
 * 
 * openIPSW is and always will be open source.
 * 
 * Contact:
 *      www.twitter.com/openIPSW        Ryan@openipsw.com
 *      www.twitter.com/cs475x          Cody@openipsw.com
 *      www.twitter.com/themrzaster     Lucca@openipsw.com
 * 
 * Homepage: www.openIPSW.com
 */

using FileDownloaderApp;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Linq;

namespace openIPSW
{
    public partial class Main : Form
    {
        private FileDownloader dlIPSW = new FileDownloader();
        [DllImport("user32.dll")] private extern static IntPtr GetForegroundWindow(); //Detects which window has focus
        public Main()
        {
            InitializeComponent();
            dlIPSW.Canceled += new EventHandler(ipsw_dlCancelled);
            dlIPSW.ProgressChanged += new EventHandler(ipsw_dlProgressChanged);
            dlIPSW.Completed += new EventHandler(ipsw_dlCompleted);
            dlIPSW.DeleteCompletedFilesAfterCancel = true;
            this.FormClosing += new FormClosingEventHandler(this.Main_FormClosing); //Create event when user closes application
            GetDeviceName(); //Retrieve list of devices
            if (System.IO.File.Exists(Application.StartupPath + "\\updater.exe") == true) //If user has updater
            {
                File.Delete(Application.StartupPath + "\\updater.exe"); //Delete updater
            }
            versionToolStripMenuItem.Text = "Version " + ProductVersion; //Set build version in the menu bar.
            if (Properties.Settings.Default.checkUpdateLoad == true)
            {
                automaticallyCheckForUpdatesToolStripMenuItem.Checked = true;
                getVersion(); //Check for update
            }
        }
        private void Main_FormClosing(object sender, FormClosingEventArgs e) { //Handle application closing
            Properties.Settings.Default.Save();
        }
#region Settings
        DateTime startDate = DateTime.Now; //Setting string to be used to calculate time remaining for download
        static string sqlHost = "readonlyipsw.db.6730814.hostedresource.com"; //MySQL server address - no 'http' or 'www' (e.g. google.com)
        static string sqlPort = "3306"; //MySQL server port
        static string sqlUser = "readipsw"; //MySQL account username
        static string sqlPass = "Read0nly"; //MySQL account password
        static string sqlDB = "readonlyipsw"; //MySQL database of devices + firmware
        string mysqlIPSW = "Server=" + sqlHost + ";Port=" + sqlPort + ";Database=" + sqlDB + ";Uid=" + sqlUser + ";Password=" + sqlPass + ";"; //Connection string for everything else
        string httpPath = "theredroute.co.uk/ryansfiles/"; //Path to root directory (No "http://" or "www."), end with "/"
        string httpFile = "openIPSWUpdater.exe"; //Name of updater
        string Saved_File; //File save path
        string deviceTable; //Selected device
        string[] fwfile = new string[2]; //Aray for url and file name
        string[] fwinfo = new string[10]; //Array for jailbreak & unlock "yes/no"
        static int timerTime = 1;
        int fw_a_file = 0; //Index for file array
        int fw_a_info = 0; //Index for info array
        bool jailbreakResultClick = false; //If tool url available, enable onClick
        bool unlockResultClick = false; //If unlock url available, enable onClick
        bool shshResultClick = false; //If SHSH is available, enable onClick
        Process p = new Process(); //Process manager
        ToolTip jailbreakTip = new ToolTip();
        WebClient downloadUpdate = new WebClient(); //WebClient for update
        private delegate void UpdateProgessCallback(Int64 TotalRead, Int64 TotalBytes);
#endregion
#region Device & Firmware Selection
        private void ComboBox1_SelectedIndexChanged(object sender, System.EventArgs e) //Sets firmware version value depending on the device selected
        {
            if (DeviceComboBox.Text != "" && DeviceComboBox.Text != null)
            {
                FirmwareComboBox.Enabled = true;
            }
            jailbreakTip.SetToolTip(jailbreakResult, null); //Reset tooltip
            FirmwareComboBox.Items.Clear(); //Clears firmware version on every change so we dont get multiple results
            FirmwareComboBox.ResetText(); //Resets text so its not possible to get another device's firmware version
            GetDeviceTable(DeviceComboBox.Text);
            GetFirmwareList(deviceTable); //Retrieve list of firmware for selected device
            controlButton.Enabled = false;
            downloadLabel.Text = "";
            jailbreakResultClick = unlockResultClick = shshResultClick = false; //Set labels to non-clickable
            jailbreakResult.Cursor = unlockResult.Cursor = shshResult.Cursor = Cursors.Default; //Set label cursors to default (arrow)
            jailbreakResultBool.Text = jailbreakResult.Text = unlockResultBool.Text = unlockResult.Text = basebandResult.Text = sizeResult.Text = shshResult.Text = "X"; //Set labels to "X"
            jailbreakResultBool.ForeColor = jailbreakResult.ForeColor = unlockResultBool.ForeColor = unlockResult.ForeColor = basebandResult.ForeColor = sizeResult.ForeColor = shshResult.ForeColor = System.Drawing.SystemColors.ControlText; //Set label text colors to black
        }
        private void ComboBox2_SelectedIndexChanged(object sender, System.EventArgs e) //When user selects item
        {
            jailbreakTip.SetToolTip(jailbreakResult, null);
            Array.Clear(fwinfo, 0, 10); //Clear GetFWInfo array
            jailbreakResultClick = unlockResultClick = shshResultClick = false;
            jailbreakResult.Cursor = unlockResult.Cursor = shshResult.Cursor = Cursors.Default;
            GetFWInfo(deviceTable, (FirmwareComboBox.SelectedIndex + 1)); //Get information
            switch (fwinfo[0].Replace(" ", "")) //Jailbreak?
            {
                case "Yes":
                    jailbreakResultBool.Text = "Yes";
                    if (fwinfo[4] == "" || fwinfo[4] == null)
                    {
                        jailbreakResult.Text = "X";
                        jailbreakResult.ForeColor = System.Drawing.SystemColors.ControlText ;
                    }
                    else if (fwinfo[4] != "" && fwinfo[4] != null)
                    {
                        jailbreakResult.Text = fwinfo[4];
                        if (fwinfo[5] == "" || fwinfo[5] == null)
                        {
                            jailbreakResultClick = false;
                            jailbreakResult.Cursor = Cursors.Default;
                        }
                        else if (fwinfo[5] != "" && fwinfo[5] != null)
                        {
                            jailbreakResultClick = true; //Set jailbreak label to clickable
                            jailbreakResult.Cursor = Cursors.Hand; //Set jailbreak mouse-over cursor to hand
                        }
                    }
                    if (fwinfo[8] == "No" || fwinfo[8] == "" || fwinfo[8] == null)
                    {
                        jailbreakResult.ForeColor = jailbreakResultBool.ForeColor = System.Drawing.Color.Green;
                        jailbreakTip.SetToolTip(jailbreakResult, "Untethered jailbreak");
                        jailbreakTip.SetToolTip(jailbreakResultBool, "Untethered jailbreak");
                    }
                    else if (fwinfo[8] != "No" && fwinfo[8] != "" && fwinfo[8] != null)
                    {
                        jailbreakResult.ForeColor = jailbreakResultBool.ForeColor = System.Drawing.Color.Orange;
                        jailbreakTip.SetToolTip(jailbreakResult, "Tethered jailbreak");
                        jailbreakTip.SetToolTip(jailbreakResultBool, "Tethered jailbreak");
                    }
                    break;
                case "No":
                    jailbreakResult.Text = "X";
                    jailbreakResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    jailbreakResultBool.Text = "No";
                    jailbreakResultBool.ForeColor = System.Drawing.Color.Red;
                    break;
                default:
                    jailbreakResult.Text = jailbreakResultBool.Text = "X";
                    jailbreakResult.ForeColor = jailbreakResultBool.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
            }
            switch (fwinfo[1].Replace(" ", "")) //Unlock?
            {
                case "Yes":
                    unlockResultBool.Text = "Yes";
                    unlockResultBool.ForeColor = System.Drawing.Color.Green;
                    if (fwinfo[6] == "" || fwinfo[6] == null)
                    {
                        unlockResult.Text = "X";
                        unlockResult.ForeColor = System.Drawing.SystemColors.ControlText ;
                    }
                    else if (fwinfo[6] != "" && fwinfo[6] != null)
                    {
                        unlockResult.Text = fwinfo[6];
                        unlockResult.ForeColor = System.Drawing.Color.Green;
                        if (fwinfo[7] == "" || fwinfo[7] == null)
                        {
                            unlockResultClick = false;
                            unlockResult.Cursor = Cursors.Default;
                        }
                        else if (fwinfo[7] != "" && fwinfo[7] != null)
                        {
                            unlockResultClick = true; //Set unlock label to clickable
                            unlockResult.Cursor = Cursors.Hand; //Set unlock mouse-over cursor to hand
                        }
                    }
                    break;
                case "No":
                    unlockResult.Text = "X";
                    unlockResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    unlockResultBool.Text = "No";
                    unlockResultBool.ForeColor = System.Drawing.Color.Red;
                    break;
                default:
                    unlockResult.Text = unlockResultBool.Text = "X";
                    unlockResult.ForeColor = unlockResultBool.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
            }
            switch (fwinfo[2].Replace(" ", "")) //Baseband
            {
                case "":
                    basebandResult.Text = "X";
                    basebandResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
                case null:
                    basebandResult.Text = "X";
                    basebandResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
                default:
                    basebandResult.Text = fwinfo[2];
                    basebandResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
            }
            switch (fwinfo[3].Replace(" ", "")) //Size
            {
                case "":
                    sizeResult.Text = "X";
                    sizeResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
                case null:
                    sizeResult.Text = "X";
                    sizeResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
                default:
                    if (fwinfo[3].Length < 11)
                    {
                        sizeResult.Text = fwinfo[3].Substring(0, 2) + " MB"; //10mb to 99mb
                    }
                    else if (fwinfo[3].Length == 7 || fwinfo[3].Length == 11)
                    {
                        sizeResult.Text = fwinfo[3].Substring(0, 3) + " MB"; //100mb to 999mb
                    }
                    else if (fwinfo[3].Length == 13)
                    {
                        sizeResult.Text = fwinfo[3].Replace(",", ".").Substring(0, 4) + " GB"; //1gb (In form of 1.00gb)
                    }
                    sizeResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
            }
            switch (fwinfo[9].Replace(" ", "")) //SHSH?
            {
                case "Yes":
                    shshResult.Text = "Available";
                    shshResult.ForeColor = System.Drawing.Color.Green;
                    shshResultClick = true;
                    shshResult.Cursor = Cursors.Hand;
                    break;
                case "No":
                    shshResult.Text = "Unavailable";
                    shshResult.ForeColor = System.Drawing.Color.Red;
                    shshResultClick = false;
                    shshResult.Cursor = Cursors.Default;
                    break;
                default:
                    shshResult.Text = "X";
                    shshResult.ForeColor = System.Drawing.SystemColors.ControlText;
                    break;
            }
            downloadLabel.Text = "";
            controlButton.Enabled = true;
        }
        private void jailbreakResult_Click(object sender, EventArgs e)
        {
            if (jailbreakResultClick == true)
            {
                System.Diagnostics.Process.Start(fwinfo[5]);
            }
        }
        private void unlockResult_Click(object sender, EventArgs e)
        {
            if (unlockResultClick == true)
            {
                System.Diagnostics.Process.Start(fwinfo[7]);
            }
        }
        private void label5_Click(object sender, EventArgs e)
        {
            if (shshResultClick == true)
            {
                System.Diagnostics.Process.Start("http://thefirmwareumbrella.blogspot.com");
            }
        }
#endregion
#region IPSW Downloading
        public void button1_Click(object sender, EventArgs e) //When user clicks the download button. 
        {
            switch (controlButton.Text)
            {
                case "Download":
                    saveFileDialog1.Title = "Choose location to save your IPSW file"; //Sets the title of the save dialog
                    saveFileDialog1.Filter = "Apple Firmware (*.ipsw)|*.ipsw"; //Sets the file type as ipsw
                    int versionID = FirmwareComboBox.SelectedIndex + 1; //Sets the index of the selected item to the matching ID of the firmware
                    if (DeviceComboBox.Text != "" && FirmwareComboBox.Text != "")
                    {
                        GetFWFile(deviceTable, versionID); //Get firmware url and file name
                    }
                    if (fwfile[0] != null && fwfile[0] != "")
                    {
                        saveFileDialog1.FileName = fwfile[1].Replace(" ", "");
                        if (saveFileDialog1.ShowDialog() != DialogResult.Cancel) //Show save file window
                        {
                            Saved_File = saveFileDialog1.FileName; //Set file name
                        }
                        else //Clear Saved_File and downloadLink
                        {
                            Saved_File = null;
                            Array.Clear(fwfile, 0, 2); //Clear file information (download link and name)
                        }
                    }
                    if (fwfile[0] == "" || fwfile[0] == null && FirmwareComboBox.Text == "")
                    {
                        MessageBox.Show("This firmware is unavailable for one of the following reasons:\r\n\r\n1. It is not available on Apple's servers\r\n2. It is a premium update\r\n3. There is an error in our database", "Unable to access IPSW", MessageBoxButtons.OK, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button1); //No download link
                    }
                    if (Saved_File != null) //Download file unless user cancelled or didn't enter
                    {
                        dlIPSW.LocalDirectory = System.IO.Path.GetDirectoryName(Saved_File);
                        pauseButton.Enabled = true;
                        controlButton.Text = "Cancel"; //Show cancel button
                        DeviceComboBox.Enabled = FirmwareComboBox.Enabled = false; //Disable list boxes to prevent user from erasing the download label
                        dlIPSW.Files.Clear();
                        dlIPSW.Files.Add(new FileDownloader.FileInfo(fwfile[0].Replace(" ", ""))); //Set File for Downlaod
                        dlIPSW.Start(); //Start downloading
                        timer3.Start();
                        Saved_File = null;
                        Array.Clear(fwfile, 0, 2);
                        timer2.Tick += new EventHandler(TimerEventProcessor); //Do event on every tick
                        timer2.Start();
                        startDate = DateTime.Now; //Set current time, used to calculate remaining time of download
                    }
                    break;
                case "Cancel":
                    DialogResult cancelDL = MessageBox.Show("Are you sure you want to cancel?", "Cancel download", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button2);
                    if (cancelDL == DialogResult.Yes)
                    {
                        dlIPSW.Stop();
                    }
                    break;
            }
        }
        private void pauseButton_Click_1(object sender, EventArgs e)
        {
            if (pauseButton.Text == "Pause")
            {
                downloadLabel.Text = "Download paused!";
                dlIPSW.Pause();
                pauseButton.Text = "Resume";
                timer3.Enabled = false;
            }
            else
            {
                dlIPSW.Resume();
                pauseButton.Text = "Pause";
                timer3.Enabled = true;
            }
        }
        public void TimerEventProcessor(Object myObject, EventArgs myEventArgs)
        {
            //Add 2 to the timer, esentially counting how many seconds has passed.
            //Must be equal to (timer2.Interval / 1000) so it matches the seconds.
            timerTime += (timer2.Interval / 1000);
        }
        private void ipsw_dlProgressChanged(object sender, EventArgs e)
        {
            progressBar.Value = Convert.ToInt32(dlIPSW.CurrentFilePercentage());
        }
        private void timer3_Tick_1(object sender, EventArgs e)
        {
            string mbtogo = "";
            // Calculate the download progress in percentages
            // Display the current progress on the form
            if (fwinfo[3].Length < 11)
            {
                mbtogo = (fwinfo[3].Substring(0, 2) + "MB");
            }
            else if (fwinfo[3].Length == 7 || fwinfo[3].Length == 11 || fwinfo[3].Length == 15)
            {
                mbtogo = (fwinfo[3].Substring(0, 3) + "MB");
            }
            else if (fwinfo[3].Length == 13)
            {
                mbtogo = (fwinfo[3].Replace(",", ".").Substring(0, 4) + "GB");
            }
            Int64 dlSpeed = ((dlIPSW.CurrentFileProgress / timerTime) / 1024); //Starts at 0, can't divide by zero
            if (dlSpeed == 0) //Set it to 1KB/s at beginning to prevent division by zero
            {
                dlSpeed = 1;
            }
            string speed = FileDownloader.FormatSizeDecimal(dlIPSW.DownloadSpeed);
            string mbreceived = (FileDownloader.FormatSizeDecimal(dlIPSW.CurrentFileProgress)); //Show total received
            double remainingTimeSeconds = (((dlIPSW.CurrentFileSize - dlIPSW.CurrentFileProgress) / 1024) / dlSpeed); //Get time remaining in seconds
            string remainingTime = string.Empty;
            if ((DateTime.Now - startDate).Seconds > 0)
            {
                if (remainingTimeSeconds > 3600) //If there's one hour or more to wait
                {
                    string prefixedTimeHour = ((int)(remainingTimeSeconds) / 3600).ToString("n0");
                    string unitHour = null;
                    if (prefixedTimeHour == "1") //Fixes grammatical error of a plural word with a single entity "1 hours"
                    {
                        unitHour = " hour, ";
                    }
                    else
                    {
                        unitHour = " hours, ";
                    }
                    remainingTime += prefixedTimeHour + unitHour; //Beginning of string
                    remainingTimeSeconds %= 3600;
                }
                if (remainingTimeSeconds > 60)
                {
                    string prefixedTimeMinute = ((int)(remainingTimeSeconds) / 60).ToString("n0");
                    string unitMinute = null;
                    if (prefixedTimeMinute == "1") //Fixes grammatical error of a plural word with a single entity "1 minutes"
                    {
                        unitMinute = " minute, ";
                    }
                    else
                    {
                        unitMinute = " minutes, ";
                    }
                    remainingTime += prefixedTimeMinute + unitMinute; //Beginning of string unless hours exist
                    remainingTimeSeconds %= 60;
                }
                string prefixedTimeSecond = ((int)remainingTimeSeconds).ToString("n0");
                string unitSecond = null;
                if (prefixedTimeSecond == "1") //Fixes grammatical error of a plural word with a single entity "1 seconds"
                {
                    unitSecond = " second remaining";
                }
                else
                {
                    unitSecond = " seconds remaining";
                }
                remainingTime += prefixedTimeSecond + unitSecond; //Beginning of string unless minutes exist
            }
            downloadLabel.Text = mbreceived + " / " + mbtogo + " (@ " + speed + "/s)  —  " + remainingTime;
            Text = "openIPSW (" + progressBar.Value + "%)";
        }
        private void ipsw_dlCompleted(object sender, EventArgs e)
        {
            progressBar.Value = 0;
            controlButton.Text = "Download";
            Text = "openIPSW"; //Set window title
            if (GetForegroundWindow() != this.Handle) //If this window isn't in the foreground
            {
                FlashWindow.Flash(this); //Flash taskbar button until focused
            }
            DeviceComboBox.Enabled = true;
            FirmwareComboBox.Enabled = true;
            Array.Clear(fwfile, 0, 2);
            timer3.Stop();
            pauseButton.Enabled = false;
            downloadLabel.Text = "Download completed!";
            timer2.Stop();
            timer2.Equals(1);
            timer2.Dispose();
            timerTime = 1;
            timer2.Tick -= new EventHandler(TimerEventProcessor);
        }
        private void ipsw_dlCancelled(object sender, EventArgs e)
        {
            if (GetForegroundWindow() != this.Handle) //If this window isn't in the foreground
            {
                FlashWindow.Flash(this); //Flash taskbar button until focused
            }
            Text = "openIPSW";
            pauseButton.Enabled = false;
            saveFileDialog1.FileName = "";
            dlIPSW.LocalDirectory = null;
            downloadLabel.Text = "Download cancelled!";
            dlIPSW.Stop();
            controlButton.Text = "Download"; //Show download button
            pauseButton.Text = "Pause";
            DeviceComboBox.Enabled = FirmwareComboBox.Enabled = true;
            Array.Clear(fwfile, 0, 2);
            progressBar.Value = 0;
            timer2.Stop();
            pauseButton.Enabled = false;
            timer3.Stop();
            timer2.Equals(1); //Reset timer to 1
            timer2.Dispose(); //Remove timer from system memory
            timerTime = 1; //Reset variable to 1
            //Cancels the event handler, important because if user clicks download button a second time
            //then it will run the event twice and time will double, then triple, etc.
            timer2.Tick -= new EventHandler(TimerEventProcessor);
        }
#endregion
#region Menu
        private void openIPSWToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.twitter.com/openIPSW");
        }
        private void cs475xToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.twitter.com/cs475x");
        }
        private void themrzmasterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.twitter.com/themrzmaster");
        }
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void automaticallyCheckForUpdatesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            switch (automaticallyCheckForUpdatesToolStripMenuItem.Checked)
            {
                case true:
                    Properties.Settings.Default.checkUpdateLoad = false;
                    automaticallyCheckForUpdatesToolStripMenuItem.Checked = false;
                    break;
                case false:
                    Properties.Settings.Default.checkUpdateLoad = true;
                    automaticallyCheckForUpdatesToolStripMenuItem.Checked = true;
                    break;
            }
        }
        public static Form IsFormAlreadyOpen(Type FormType) //Prevent user from opening more than 1 Help or About window
        {
            foreach (Form OpenForm in Application.OpenForms)
            {
                if (OpenForm.GetType() == FormType)
                    return OpenForm;
            }
            return null;
        }
        private void helpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Help HelpForm = null;
            if ((HelpForm = (Help)IsFormAlreadyOpen(typeof(Help))) == null)
            {
                HelpForm = new Help();
                HelpForm.Show();
            }
            else
            {
                HelpForm.Select();
            }
        }
        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            About AboutForm = null;
            if ((AboutForm = (About)IsFormAlreadyOpen(typeof(About))) == null)
            {
                AboutForm = new About();
                AboutForm.Show();
            }
            else
            {
                AboutForm.Select();
            }
        }
        private void checkForUpdatesToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            string page = GetPage("http://" + httpPath + "version.php");
            string serverVersion = ExtractBody(page);
            string localversion = Application.ProductVersion;
            if (string.Compare(serverVersion, localversion, true) > 0)
            {
                DialogResult vCompare = MessageBox.Show("An update for openIPSW is available (v" + serverVersion + ")\r\nWould you like to download this update?", "Check for updates", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
                switch (vCompare)
                {
                    case DialogResult.Yes: getUpdate(); closeCount.Enabled = true; break;
                    case DialogResult.No: break;
                }
            }
            else if (string.Compare(serverVersion, localversion, true) < 0 | string.Compare(serverVersion, localversion, true) == 0)
            {
                MessageBox.Show("You are using the lastest version of openIPSW", "Check for updates", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            }
        }
#endregion
#region MySQL Data
        private void GetDeviceName() //Get list of devices from database
        {
            MySqlConnection mysqlDevConn = new MySqlConnection(mysqlIPSW); //New mysql connection based on mysqlDevInfo
            MySqlCommand mysqlCmd = mysqlDevConn.CreateCommand(); //New mysql query
            mysqlCmd.CommandText = "SELECT device_name FROM 0_devices"; //Mysql query to retrieve list
            try
            {
                mysqlDevConn.Open(); //Connect to mysql
                MySqlDataReader mysqlRead = mysqlCmd.ExecuteReader(); //Read query results
                while (mysqlRead.Read()) //While reading query results
                {
                    DeviceComboBox.Items.Add(mysqlRead["device_name"].ToString()); //Add all results in alphabetical order
                }
                mysqlDevConn.Close(); //Close connection
                DeviceComboBox.Enabled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void GetDeviceTable(string devName)
        {
            MySqlConnection mysqlDevConn = new MySqlConnection(mysqlIPSW);
            MySqlCommand mysqlCmd = mysqlDevConn.CreateCommand();
            mysqlCmd.CommandText = "SELECT device_table FROM 0_devices WHERE device_name='" + devName + "'";
            try
            {
                mysqlDevConn.Open();
                MySqlDataReader mysqlRead = mysqlCmd.ExecuteReader();
                while (mysqlRead.Read())
                {
                    deviceTable = mysqlRead["device_table"].ToString();
                }
                mysqlDevConn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void GetFirmwareList(string mDevice)
        {
            MySqlConnection mysqlVConn = new MySqlConnection(mysqlIPSW);
            MySqlCommand getVersion = mysqlVConn.CreateCommand();
            getVersion.CommandText = "SELECT CONCAT(version,' (',build,')') FROM " + mDevice + ";";
            try
            {
                mysqlVConn.Open();
                MySqlDataReader mysqlVRead = getVersion.ExecuteReader();
                while (mysqlVRead.Read())
                {
                    FirmwareComboBox.Items.Add(mysqlVRead["CONCAT(version,' (',build,')')"].ToString());
                }
                mysqlVConn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void GetFWFile(string mDevice, int mID)
        {
            MySqlConnection mysqlVConn = new MySqlConnection(mysqlIPSW);
            MySqlCommand getFWInfo = mysqlVConn.CreateCommand();
            getFWInfo.CommandText = "(SELECT url as fw_file FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT name as fw_file FROM " + mDevice + " WHERE id='" + mID + "');";
            try
            {
                mysqlVConn.Open();
                MySqlDataReader mysqlVRead = getFWInfo.ExecuteReader();
                while (mysqlVRead.Read())
                {
                    fwfile[fw_a_file] = mysqlVRead["fw_file"].ToString();
                    fw_a_file = fw_a_file + 1;
                }
                mysqlVConn.Close();
                fw_a_file = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void GetFWInfo(string mDevice, int mID)
        {
            MySqlConnection mysqlVConn = new MySqlConnection(mysqlIPSW);
            MySqlCommand getFWInfo = mysqlVConn.CreateCommand();
            getFWInfo.CommandText = "(SELECT can_jailbreak as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT can_unlock as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT baseband as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT size as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT tool as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT tool_url as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT unlock_tool as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT unlock_url as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT tethered as fw_info FROM " + mDevice + " WHERE id='" + mID + "') UNION ALL (SELECT shsh as fw_info FROM " + mDevice + " WHERE id='" + mID + "');";
            try
            {
                mysqlVConn.Open();
                MySqlDataReader mysqlVRead = getFWInfo.ExecuteReader();
                while (mysqlVRead.Read())
                {
                    fwinfo[fw_a_info] = mysqlVRead["fw_info"].ToString();
                    fw_a_info = fw_a_info + 1;
                }
                mysqlVConn.Close();
                fw_a_info = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
#endregion
#region Update Check & Download
        public string GetPage(string pageUrl)
        {
            string s = "";
            try
            {
                WebRequest request = WebRequest.Create(pageUrl);
                WebResponse response = request.GetResponse();
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    s = reader.ReadToEnd();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("FAIL: " + ex.Message);
            }
            return s;
        }
        public string ExtractBody(string page)
        {
            return System.Text.RegularExpressions.Regex.Replace(page, ".*<body[^>]*>(.*)</body>.*", "$1", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        }
        private void getVersion()
        {
            string page = GetPage("http://" + httpPath + "version.php");
            string serverVersion = ExtractBody(page);
            string localversion = Application.ProductVersion;
            if (string.Compare(serverVersion, localversion, true) > 0)
            {
                DialogResult vCompare = MessageBox.Show("An update for openIPSW is available (v" + serverVersion + ")\r\nWould you like to download this update?", "Check for updates", MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
                switch (vCompare)
                {
                    case DialogResult.Yes: getUpdate(); closeCount.Enabled = true; break;
                    case DialogResult.No: break;
                }
            }
        }
        private void closeCount_Tick(object sender, EventArgs e)
        {
            Application.Exit();
        }
        private void getUpdate()
        {
            bool isElevated;
            WindowsIdentity identity = WindowsIdentity.GetCurrent();
            WindowsPrincipal principal = new WindowsPrincipal(identity);
            isElevated = principal.IsInRole(WindowsBuiltInRole.Administrator);
            if (isElevated == true)
            {
                if (System.IO.File.Exists(Application.StartupPath + "\\updater.exe") == true)
                {
                    Process[] processes = null;
                    Process instance = null;
                    Process process = new Process();
                    processes = Process.GetProcesses();
                    foreach (Process instance_loopVariable in processes)
                    {
                        instance = instance_loopVariable;
                        if (instance.ProcessName == "updater")
                        {
                            instance.CloseMainWindow();
                        }
                    }
                    File.Delete(Application.StartupPath + "\\updater.exe");
                    downloadUpdate.DownloadFile("http://" + httpPath + httpFile, Application.StartupPath + "\\updater.exe");
                }
                else if (System.IO.File.Exists(Application.StartupPath + "\\updater.exe") == false)
                {
                    downloadUpdate.DownloadFile("http://" + httpPath + httpFile, Application.StartupPath + "\\updater.exe");
                }
                runUpdater();
            }
            else
            {
                var startInfo = new ProcessStartInfo("openIPSW.exe") { Verb = "runas" };
                Process.Start(startInfo);
                Application.Exit();
            }
        }
        private void runUpdater()
        {
            p.StartInfo.FileName = Application.StartupPath + "\\updater.exe";
            p.Start();
        }
#endregion
    }
    public static class FlashWindow
    {
        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        private static extern bool FlashWindowEx(ref FLASHWINFO pwfi);
        [StructLayout(LayoutKind.Sequential)]
        private struct FLASHWINFO
        {
            public uint cbSize;
            public IntPtr hwnd;
            public uint dwFlags;
            public uint uCount;
            public uint dwTimeout;
        }
        public const uint FLASHW_STOP = 0;
        public const uint FLASHW_CAPTION = 1;
        public const uint FLASHW_TRAY = 2;
        public const uint FLASHW_ALL = 3;
        public const uint FLASHW_TIMER = 4;
        public const uint FLASHW_TIMERNOFG = 12;
        public static bool Flash(System.Windows.Forms.Form form)
        {
            if (Win2000OrLater)
            {
                FLASHWINFO fi = Create_FLASHWINFO(form.Handle, FLASHW_ALL | FLASHW_TIMERNOFG, uint.MaxValue, 0);
                return FlashWindowEx(ref fi);
            }
            return false;
        }
        private static FLASHWINFO Create_FLASHWINFO(IntPtr handle, uint flags, uint count, uint timeout)
        {
            FLASHWINFO fi = new FLASHWINFO();
            fi.cbSize = Convert.ToUInt32(Marshal.SizeOf(fi));
            fi.hwnd = handle;
            fi.dwFlags = flags;
            fi.uCount = count;
            fi.dwTimeout = timeout;
            return fi;
        }
        public static bool Flash(System.Windows.Forms.Form form, uint count)
        {
            if (Win2000OrLater)
            {
                FLASHWINFO fi = Create_FLASHWINFO(form.Handle, FLASHW_ALL, count, 0);
                return FlashWindowEx(ref fi);
            }
            return false;
        }
        public static bool Start(System.Windows.Forms.Form form)
        {
            if (Win2000OrLater)
            {
                FLASHWINFO fi = Create_FLASHWINFO(form.Handle, FLASHW_ALL, uint.MaxValue, 0);
                return FlashWindowEx(ref fi);
            }
            return false;
        }
        public static bool Stop(System.Windows.Forms.Form form)
        {
            if (Win2000OrLater)
            {
                FLASHWINFO fi = Create_FLASHWINFO(form.Handle, FLASHW_STOP, uint.MaxValue, 0);
                return FlashWindowEx(ref fi);
            }
            return false;
        }
        private static bool Win2000OrLater
        {
            get { return System.Environment.OSVersion.Version.Major >= 5; }
        }
    }
}