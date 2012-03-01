using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace openIPSW
{
    public partial class About : Form
    {
        public About()
        {
            InitializeComponent();
            label1.Text = Application.ProductName;
            label2.Text = "Version " + Application.ProductVersion;
            label3.Text = "Copyright \u00a9 2011 " + Application.CompanyName + " All rights reserved.";
        }
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://ryanburke.co.uk");
        }
        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://twitter.com/cs475x");
        }
        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://twitter.com/themrzmaster");
        }

        private void linkLabel4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://openipsw.com");
        }
    }
}
