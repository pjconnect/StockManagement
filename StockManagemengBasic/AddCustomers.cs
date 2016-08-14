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
    public partial class AddCustomers : Form
    {

        StockmanagementEntities db = new StockmanagementEntities();
        int selectedID = -1;

        public AddCustomers()
        {
            InitializeComponent();
        }

        private void btnCreateCustomer_Click(object sender, EventArgs e)
        {
            var message = "";
            var name = txtName.Text;
            var contactNumber = txtContactNumber.Text;
            var designation = txtDesignation.Text;
            var email = txtEmail.Text;
            var fax = txtFax.Text;
            var address = txtAddress.Text;
            var nic = txtNIC.Text;

            if(name.Length == 0 || contactNumber.Length == 0){
                MessageBox.Show("Some Fields Cannot Be Empty!");
                return;
            }

            var customers = db.tblCustomers.Where(t=>t.ID == selectedID).Select(t=>t);

            if (customers.Count() > 0)
            {
                //update the selected customer
                var selectedCustomer = customers.First();
                selectedCustomer.CustomerName = name;
                selectedCustomer.ContactNumber = contactNumber;
                selectedCustomer.Designation = designation;
                selectedCustomer.Email = email;
                selectedCustomer.Fax = fax;
                selectedCustomer.Address = address;
                selectedCustomer.NIC = nic;
                message = "Record Successfully Updated!";
            }
            else
            {
                //insert a new record
                var newCustomer = new tblCustomer()
                {
                    Address = address,
                    CustomerName = name,
                    ContactNumber = contactNumber,
                    Designation = designation,
                    Email = email,
                    Fax = fax,
                    NIC = nic,
                };

                db.tblCustomers.AddObject(newCustomer);
                message = "New Customer Added!";
            }

            try
            {
                db.SaveChanges();
                MessageBox.Show(message);
                RefreshGrid();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            clearForm();
        }

        void RefreshGrid()
        {
            dgCustomers.DataSource = db.tblCustomers.ToList();

        }

        private void clearForm() {
            selectedID = -1;
            txtName.Text = "";
            txtContactNumber.Text = "";
            txtDesignation.Text = "";
            txtEmail.Text = "";
            txtFax.Text = "";
            txtAddress.Text = "";
            txtNIC.Text = "";
        }

        private void AddCustomers_Load(object sender, EventArgs e)
        {
            RefreshGrid();
        }

        private void dgCustomers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1) {
                return;
            }

            try
            {
                var id = Convert.ToInt32(dgCustomers.SelectedRows[0].Cells["ID"].Value);
                var customer = db.tblCustomers.Where(t => t.ID == id).First();

                selectedID = customer.ID;
                txtName.Text = customer.CustomerName;
                txtContactNumber.Text = customer.ContactNumber;
                txtDesignation.Text = customer.Designation;
                txtEmail.Text = customer.Email;
                txtFax.Text = customer.Fax;
                txtAddress.Text = customer.Address;
                txtNIC.Text = customer.NIC;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Invalid Customer!");
                return;
            }
            

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            clearForm();
        }
    }
}
