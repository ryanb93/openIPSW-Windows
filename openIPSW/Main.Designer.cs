namespace openIPSW
{
    partial class Main
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Main));
            this.DeviceComboBox = new System.Windows.Forms.ComboBox();
            this.FirmwareComboBox = new System.Windows.Forms.ComboBox();
            this.controlButton = new System.Windows.Forms.Button();
            this.deviceLabel = new System.Windows.Forms.Label();
            this.firmwareLabel = new System.Windows.Forms.Label();
            this.progressBar = new System.Windows.Forms.ProgressBar();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.downloadLabel = new System.Windows.Forms.Label();
            this.pauseButton = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.shshResult = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.basebandResult = new System.Windows.Forms.Label();
            this.basebandLabel = new System.Windows.Forms.Label();
            this.sizeLabel = new System.Windows.Forms.Label();
            this.sizeResult = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.unlockResultBool = new System.Windows.Forms.Label();
            this.unlockLabel = new System.Windows.Forms.Label();
            this.unlockResult = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.jailbreakResultBool = new System.Windows.Forms.Label();
            this.jailbreakResult = new System.Windows.Forms.Label();
            this.jailbreakLabel = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.closeCount = new System.Windows.Forms.Timer(this.components);
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.twitterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.openIPSWToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cs475xToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.themrzmasterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.optionsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.automaticallyCheckForUpdatesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.checkForUpdatesToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.versionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.timer3 = new System.Windows.Forms.Timer(this.components);
            this.downloadGroupBox = new System.Windows.Forms.GroupBox();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.downloadGroupBox.SuspendLayout();
            this.SuspendLayout();
            // 
            // DeviceComboBox
            // 
            this.DeviceComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.DeviceComboBox.Enabled = false;
            this.DeviceComboBox.FormattingEnabled = true;
            this.DeviceComboBox.Location = new System.Drawing.Point(8, 32);
            this.DeviceComboBox.Name = "DeviceComboBox";
            this.DeviceComboBox.Size = new System.Drawing.Size(280, 21);
            this.DeviceComboBox.TabIndex = 0;
            this.DeviceComboBox.SelectedIndexChanged += new System.EventHandler(this.ComboBox1_SelectedIndexChanged);
            // 
            // FirmwareComboBox
            // 
            this.FirmwareComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.FirmwareComboBox.Enabled = false;
            this.FirmwareComboBox.FormattingEnabled = true;
            this.FirmwareComboBox.Location = new System.Drawing.Point(296, 32);
            this.FirmwareComboBox.Name = "FirmwareComboBox";
            this.FirmwareComboBox.Size = new System.Drawing.Size(280, 21);
            this.FirmwareComboBox.TabIndex = 1;
            this.FirmwareComboBox.SelectedIndexChanged += new System.EventHandler(this.ComboBox2_SelectedIndexChanged);
            // 
            // controlButton
            // 
            this.controlButton.AutoSize = true;
            this.controlButton.Enabled = false;
            this.controlButton.Location = new System.Drawing.Point(408, 136);
            this.controlButton.Name = "controlButton";
            this.controlButton.Size = new System.Drawing.Size(80, 24);
            this.controlButton.TabIndex = 2;
            this.controlButton.Text = "Download";
            this.controlButton.UseVisualStyleBackColor = true;
            this.controlButton.Click += new System.EventHandler(this.button1_Click);
            // 
            // deviceLabel
            // 
            this.deviceLabel.Location = new System.Drawing.Point(8, 16);
            this.deviceLabel.Name = "deviceLabel";
            this.deviceLabel.Size = new System.Drawing.Size(280, 13);
            this.deviceLabel.TabIndex = 9;
            this.deviceLabel.Text = "Device";
            this.deviceLabel.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // firmwareLabel
            // 
            this.firmwareLabel.Location = new System.Drawing.Point(296, 16);
            this.firmwareLabel.Name = "firmwareLabel";
            this.firmwareLabel.Size = new System.Drawing.Size(280, 13);
            this.firmwareLabel.TabIndex = 10;
            this.firmwareLabel.Text = "Firmware Version";
            this.firmwareLabel.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // progressBar
            // 
            this.progressBar.BackColor = System.Drawing.SystemColors.Control;
            this.progressBar.Location = new System.Drawing.Point(8, 168);
            this.progressBar.Name = "progressBar";
            this.progressBar.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.progressBar.Size = new System.Drawing.Size(568, 24);
            this.progressBar.TabIndex = 19;
            // 
            // downloadLabel
            // 
            this.downloadLabel.Location = new System.Drawing.Point(8, 136);
            this.downloadLabel.Name = "downloadLabel";
            this.downloadLabel.Size = new System.Drawing.Size(392, 17);
            this.downloadLabel.TabIndex = 21;
            this.downloadLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
            // 
            // pauseButton
            // 
            this.pauseButton.Enabled = false;
            this.pauseButton.Location = new System.Drawing.Point(496, 136);
            this.pauseButton.Name = "pauseButton";
            this.pauseButton.Size = new System.Drawing.Size(80, 24);
            this.pauseButton.TabIndex = 38;
            this.pauseButton.Text = "Pause";
            this.pauseButton.UseVisualStyleBackColor = true;
            this.pauseButton.Click += new System.EventHandler(this.pauseButton_Click_1);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.shshResult);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.basebandResult);
            this.groupBox3.Controls.Add(this.basebandLabel);
            this.groupBox3.Controls.Add(this.sizeLabel);
            this.groupBox3.Controls.Add(this.sizeResult);
            this.groupBox3.Location = new System.Drawing.Point(392, 56);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(184, 72);
            this.groupBox3.TabIndex = 37;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Info";
            // 
            // shshResult
            // 
            this.shshResult.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.shshResult.ForeColor = System.Drawing.SystemColors.ControlText;
            this.shshResult.Location = new System.Drawing.Point(72, 48);
            this.shshResult.Name = "shshResult";
            this.shshResult.Size = new System.Drawing.Size(104, 13);
            this.shshResult.TabIndex = 32;
            this.shshResult.Text = "X";
            this.shshResult.TextAlign = System.Drawing.ContentAlignment.TopRight;
            this.shshResult.Click += new System.EventHandler(this.label5_Click);
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(8, 48);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(72, 16);
            this.label4.TabIndex = 31;
            this.label4.Text = "SHSH blobs";
            // 
            // basebandResult
            // 
            this.basebandResult.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold);
            this.basebandResult.ForeColor = System.Drawing.SystemColors.ControlText;
            this.basebandResult.Location = new System.Drawing.Point(64, 16);
            this.basebandResult.Name = "basebandResult";
            this.basebandResult.Size = new System.Drawing.Size(112, 13);
            this.basebandResult.TabIndex = 28;
            this.basebandResult.Text = "X";
            this.basebandResult.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // basebandLabel
            // 
            this.basebandLabel.Location = new System.Drawing.Point(8, 16);
            this.basebandLabel.Name = "basebandLabel";
            this.basebandLabel.Size = new System.Drawing.Size(64, 16);
            this.basebandLabel.TabIndex = 27;
            this.basebandLabel.Text = "Baseband";
            // 
            // sizeLabel
            // 
            this.sizeLabel.Location = new System.Drawing.Point(8, 32);
            this.sizeLabel.Name = "sizeLabel";
            this.sizeLabel.Size = new System.Drawing.Size(30, 13);
            this.sizeLabel.TabIndex = 29;
            this.sizeLabel.Text = "Size";
            // 
            // sizeResult
            // 
            this.sizeResult.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.sizeResult.ForeColor = System.Drawing.SystemColors.ControlText;
            this.sizeResult.Location = new System.Drawing.Point(32, 32);
            this.sizeResult.Name = "sizeResult";
            this.sizeResult.Size = new System.Drawing.Size(144, 13);
            this.sizeResult.TabIndex = 30;
            this.sizeResult.Text = "X";
            this.sizeResult.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.unlockResultBool);
            this.groupBox2.Controls.Add(this.unlockLabel);
            this.groupBox2.Controls.Add(this.unlockResult);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Location = new System.Drawing.Point(200, 56);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(184, 72);
            this.groupBox2.TabIndex = 36;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Unlock";
            // 
            // unlockResultBool
            // 
            this.unlockResultBool.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.unlockResultBool.Location = new System.Drawing.Point(56, 16);
            this.unlockResultBool.Name = "unlockResultBool";
            this.unlockResultBool.Size = new System.Drawing.Size(120, 16);
            this.unlockResultBool.TabIndex = 31;
            this.unlockResultBool.Text = "X";
            this.unlockResultBool.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // unlockLabel
            // 
            this.unlockLabel.Location = new System.Drawing.Point(8, 16);
            this.unlockLabel.Name = "unlockLabel";
            this.unlockLabel.Size = new System.Drawing.Size(58, 16);
            this.unlockLabel.TabIndex = 24;
            this.unlockLabel.Text = "Available";
            // 
            // unlockResult
            // 
            this.unlockResult.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.unlockResult.Location = new System.Drawing.Point(40, 32);
            this.unlockResult.Name = "unlockResult";
            this.unlockResult.Size = new System.Drawing.Size(136, 32);
            this.unlockResult.TabIndex = 26;
            this.unlockResult.Text = "X";
            this.unlockResult.TextAlign = System.Drawing.ContentAlignment.TopRight;
            this.unlockResult.Click += new System.EventHandler(this.unlockResult_Click);
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(8, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(32, 16);
            this.label1.TabIndex = 32;
            this.label1.Text = "Tool";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.jailbreakResultBool);
            this.groupBox1.Controls.Add(this.jailbreakResult);
            this.groupBox1.Controls.Add(this.jailbreakLabel);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(8, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(184, 72);
            this.groupBox1.TabIndex = 35;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Jailbreak";
            // 
            // jailbreakResultBool
            // 
            this.jailbreakResultBool.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.jailbreakResultBool.Location = new System.Drawing.Point(56, 16);
            this.jailbreakResultBool.Name = "jailbreakResultBool";
            this.jailbreakResultBool.Size = new System.Drawing.Size(120, 15);
            this.jailbreakResultBool.TabIndex = 34;
            this.jailbreakResultBool.Text = "X";
            this.jailbreakResultBool.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // jailbreakResult
            // 
            this.jailbreakResult.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.jailbreakResult.ForeColor = System.Drawing.SystemColors.ControlText;
            this.jailbreakResult.Location = new System.Drawing.Point(40, 32);
            this.jailbreakResult.Name = "jailbreakResult";
            this.jailbreakResult.Size = new System.Drawing.Size(136, 32);
            this.jailbreakResult.TabIndex = 25;
            this.jailbreakResult.Text = "X";
            this.jailbreakResult.TextAlign = System.Drawing.ContentAlignment.TopRight;
            this.jailbreakResult.Click += new System.EventHandler(this.jailbreakResult_Click);
            // 
            // jailbreakLabel
            // 
            this.jailbreakLabel.Location = new System.Drawing.Point(8, 16);
            this.jailbreakLabel.Name = "jailbreakLabel";
            this.jailbreakLabel.Size = new System.Drawing.Size(56, 13);
            this.jailbreakLabel.TabIndex = 23;
            this.jailbreakLabel.Text = "Available";
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(8, 32);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(32, 16);
            this.label2.TabIndex = 33;
            this.label2.Text = "Tool";
            // 
            // closeCount
            // 
            this.closeCount.Interval = 500;
            this.closeCount.Tick += new System.EventHandler(this.closeCount_Tick);
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.SystemColors.Menu;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.optionsToolStripMenuItem,
            this.toolStripMenuItem1});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(600, 24);
            this.menuStrip1.TabIndex = 23;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.twitterToolStripMenuItem,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // twitterToolStripMenuItem
            // 
            this.twitterToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.openIPSWToolStripMenuItem,
            this.cs475xToolStripMenuItem,
            this.themrzmasterToolStripMenuItem});
            this.twitterToolStripMenuItem.Name = "twitterToolStripMenuItem";
            this.twitterToolStripMenuItem.ShortcutKeyDisplayString = "";
            this.twitterToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.twitterToolStripMenuItem.Text = "Twitter";
            // 
            // openIPSWToolStripMenuItem
            // 
            this.openIPSWToolStripMenuItem.Name = "openIPSWToolStripMenuItem";
            this.openIPSWToolStripMenuItem.Size = new System.Drawing.Size(158, 22);
            this.openIPSWToolStripMenuItem.Text = "@openIPSW";
            this.openIPSWToolStripMenuItem.Click += new System.EventHandler(this.openIPSWToolStripMenuItem_Click);
            // 
            // cs475xToolStripMenuItem
            // 
            this.cs475xToolStripMenuItem.Name = "cs475xToolStripMenuItem";
            this.cs475xToolStripMenuItem.Size = new System.Drawing.Size(158, 22);
            this.cs475xToolStripMenuItem.Text = "@cs475x";
            this.cs475xToolStripMenuItem.Click += new System.EventHandler(this.cs475xToolStripMenuItem_Click);
            // 
            // themrzmasterToolStripMenuItem
            // 
            this.themrzmasterToolStripMenuItem.Name = "themrzmasterToolStripMenuItem";
            this.themrzmasterToolStripMenuItem.Size = new System.Drawing.Size(158, 22);
            this.themrzmasterToolStripMenuItem.Text = "@themrzmaster";
            this.themrzmasterToolStripMenuItem.Click += new System.EventHandler(this.themrzmasterToolStripMenuItem_Click);
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.ShortcutKeyDisplayString = "Alt + F4";
            this.exitToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.F4)));
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // optionsToolStripMenuItem
            // 
            this.optionsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.automaticallyCheckForUpdatesToolStripMenuItem});
            this.optionsToolStripMenuItem.Name = "optionsToolStripMenuItem";
            this.optionsToolStripMenuItem.Size = new System.Drawing.Size(61, 20);
            this.optionsToolStripMenuItem.Text = "Options";
            // 
            // automaticallyCheckForUpdatesToolStripMenuItem
            // 
            this.automaticallyCheckForUpdatesToolStripMenuItem.Name = "automaticallyCheckForUpdatesToolStripMenuItem";
            this.automaticallyCheckForUpdatesToolStripMenuItem.Size = new System.Drawing.Size(245, 22);
            this.automaticallyCheckForUpdatesToolStripMenuItem.Text = "Automatically check for updates";
            this.automaticallyCheckForUpdatesToolStripMenuItem.Click += new System.EventHandler(this.automaticallyCheckForUpdatesToolStripMenuItem_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.helpToolStripMenuItem,
            this.aboutToolStripMenuItem,
            this.checkForUpdatesToolStripMenuItem1,
            this.versionToolStripMenuItem});
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(44, 20);
            this.toolStripMenuItem1.Text = "Help";
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            this.helpToolStripMenuItem.ShortcutKeyDisplayString = "F1";
            this.helpToolStripMenuItem.ShortcutKeys = System.Windows.Forms.Keys.F1;
            this.helpToolStripMenuItem.Size = new System.Drawing.Size(189, 22);
            this.helpToolStripMenuItem.Text = "Help";
            this.helpToolStripMenuItem.Click += new System.EventHandler(this.helpToolStripMenuItem_Click);
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.ShortcutKeyDisplayString = "F2";
            this.aboutToolStripMenuItem.ShortcutKeys = System.Windows.Forms.Keys.F2;
            this.aboutToolStripMenuItem.Size = new System.Drawing.Size(189, 22);
            this.aboutToolStripMenuItem.Text = "About";
            this.aboutToolStripMenuItem.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // checkForUpdatesToolStripMenuItem1
            // 
            this.checkForUpdatesToolStripMenuItem1.Name = "checkForUpdatesToolStripMenuItem1";
            this.checkForUpdatesToolStripMenuItem1.ShortcutKeyDisplayString = "F3";
            this.checkForUpdatesToolStripMenuItem1.ShortcutKeys = System.Windows.Forms.Keys.F3;
            this.checkForUpdatesToolStripMenuItem1.Size = new System.Drawing.Size(189, 22);
            this.checkForUpdatesToolStripMenuItem1.Text = "Check for updates";
            this.checkForUpdatesToolStripMenuItem1.Click += new System.EventHandler(this.checkForUpdatesToolStripMenuItem1_Click);
            // 
            // versionToolStripMenuItem
            // 
            this.versionToolStripMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.versionToolStripMenuItem.Enabled = false;
            this.versionToolStripMenuItem.Name = "versionToolStripMenuItem";
            this.versionToolStripMenuItem.Size = new System.Drawing.Size(189, 22);
            this.versionToolStripMenuItem.Text = "Version";
            // 
            // timer3
            // 
            this.timer3.Interval = 500;
            this.timer3.Tick += new System.EventHandler(this.timer3_Tick_1);
            // 
            // downloadGroupBox
            // 
            this.downloadGroupBox.Controls.Add(this.pauseButton);
            this.downloadGroupBox.Controls.Add(this.groupBox3);
            this.downloadGroupBox.Controls.Add(this.groupBox2);
            this.downloadGroupBox.Controls.Add(this.deviceLabel);
            this.downloadGroupBox.Controls.Add(this.groupBox1);
            this.downloadGroupBox.Controls.Add(this.FirmwareComboBox);
            this.downloadGroupBox.Controls.Add(this.downloadLabel);
            this.downloadGroupBox.Controls.Add(this.firmwareLabel);
            this.downloadGroupBox.Controls.Add(this.controlButton);
            this.downloadGroupBox.Controls.Add(this.DeviceComboBox);
            this.downloadGroupBox.Controls.Add(this.progressBar);
            this.downloadGroupBox.Location = new System.Drawing.Point(8, 24);
            this.downloadGroupBox.Name = "downloadGroupBox";
            this.downloadGroupBox.Size = new System.Drawing.Size(584, 200);
            this.downloadGroupBox.TabIndex = 39;
            this.downloadGroupBox.TabStop = false;
            this.downloadGroupBox.Text = "Download";
            // 
            // timer2
            // 
            this.timer2.Enabled = true;
            this.timer2.Interval = 2000;
            // 
            // Main
            // 
            this.AccessibleRole = System.Windows.Forms.AccessibleRole.None;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(600, 232);
            this.Controls.Add(this.downloadGroupBox);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "Main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "openIPSW";
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.downloadGroupBox.ResumeLayout(false);
            this.downloadGroupBox.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox DeviceComboBox;
        private System.Windows.Forms.ComboBox FirmwareComboBox;
        private System.Windows.Forms.Button controlButton;
        private System.Windows.Forms.Label deviceLabel;
        private System.Windows.Forms.Label firmwareLabel;
        private System.Windows.Forms.ProgressBar progressBar;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.Label downloadLabel;
        private System.Windows.Forms.Label unlockResult;
        private System.Windows.Forms.Label jailbreakResult;
        private System.Windows.Forms.Label unlockLabel;
        private System.Windows.Forms.Label jailbreakLabel;
        private System.Windows.Forms.Timer closeCount;
        private System.Windows.Forms.Label basebandResult;
        private System.Windows.Forms.Label basebandLabel;
        private System.Windows.Forms.Label sizeResult;
        private System.Windows.Forms.Label sizeLabel;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem twitterToolStripMenuItem;
        private System.Windows.Forms.Label unlockResultBool;
        private System.Windows.Forms.Label jailbreakResultBool;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ToolStripMenuItem optionsToolStripMenuItem;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label shshResult;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem versionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem checkForUpdatesToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem automaticallyCheckForUpdatesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem openIPSWToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cs475xToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem themrzmasterToolStripMenuItem;
        private System.Windows.Forms.Button pauseButton;
        private System.Windows.Forms.Timer timer3;
        private System.Windows.Forms.GroupBox downloadGroupBox;
        private System.Windows.Forms.Timer timer2;
    }
}

