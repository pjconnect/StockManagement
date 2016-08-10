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
    public partial class AddUsers : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public AddUsers()
        {
            InitializeComponent();
            cmbUserLevel.Items.Add("Admin");
            cmbUserLevel.Items.Add("User");
            cmbUserLevel.SelectedIndex = 0;
            loadUsers();
        }

        private void btnCreateUser_Click(object sender, EventArgs e)
        {
            var username = txtUsername.Text;
            var level = cmbUserLevel.SelectedIndex+1;
            var password = txtPassword.Text;

            if ((username.Length == 0) || (password.Length == 0))
            {
                MessageBox.Show("Username and Password cannot be empty!");
                return;
            }


            var newUser = new tblUser() { 
                Username = username,
                UserLevel = level,
                Password = password,
                IsActive = true
            };
            db.tblUsers.AddObject(newUser);
            try
            {
                db.SaveChanges();
                MessageBox.Show("User created successfully!");
                loadUsers();
            }
            catch (Exception ex)
            {
                MessageBox.Show("User Creation Failed! " + ex.Message);
            }
        }

        private void loadUsers() {
            var usersList = db.tblUsers.ToList();
            dgUsers.DataSource = usersList;
        }

        private void dgUsers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.RowIndex != -1){
                return;
            }

            //todo edit users
        }
    }
}
