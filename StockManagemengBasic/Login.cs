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

            var users = db.tblUsers.Where(t => t.Username == username & t.Password == password).Count();

            if (users > 0)
            {
                new AddStock().Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("invalid username or password");
                
            }
            
        }
    }
}
