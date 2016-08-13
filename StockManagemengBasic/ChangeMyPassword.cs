using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace StockManagemengBasic
{
    public partial class ChangeMyPassword : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public ChangeMyPassword()
        {
            InitializeComponent();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            var currentPassword = txtCurrentPassword.Text;
            var newPassword = txtNewPassword.Text;
            var confirmPassword = txtConfirm.Text;

            if (SystemProperties.CurrentLoginUserID == 0)
            {
                MessageBox.Show("Please Login again!");
                return;
            }

            if (currentPassword.Length == 0 || newPassword.Length == 0 || confirmPassword.Length == 0)
            {
                MessageBox.Show("Passwords Cannot be Empty!");
                return;
            }

            if(!newPassword.Equals(confirmPassword)){
                MessageBox.Show("Passwords Mismatch!");
                return;
            }


            var selectedUser = db.tblUsers.Where(t=>t.ID == SystemProperties.CurrentLoginUserID).First();
            if(!selectedUser.Password.Equals(currentPassword)){
                MessageBox.Show("Your Current Password is Wrong!");
                return;
            }

            selectedUser.Password = newPassword;

            try
            {
                db.SaveChanges();
                MessageBox.Show("Passwords Changed Successfully!");
                clearForm();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


        }

        private void clearForm() {
            txtConfirm.Text = "";
            txtNewPassword.Text = "";
            txtCurrentPassword.Text = "";
        }
    }
}
