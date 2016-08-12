using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace StockManagemengBasic
{
    public partial class Login : Form
    {
        StockmanagementEntities db = new StockmanagementEntities();

        public Login()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            var username = txtUsername.Text;
            var password = txtPassword.Text;

            var user = db.tblUsers.Where(t => t.Username == username && t.Password == password);
            if (user.Count() > 0)
            {
                SystemProperties.CurrentLoginUserID = user.First().ID;
                this.Close();
                new StartAdmin().Show();
            }
            else
            {
                MessageBox.Show("Username or Password is Wrong!");
                return;
            }

        }

        private void Login_FormClosed(object sender, FormClosedEventArgs e)
        {
            
        }
    }
}
