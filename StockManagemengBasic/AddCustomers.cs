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

        public AddCustomers()
        {
            InitializeComponent();
        }

        private void btnCreateCustomer_Click(object sender, EventArgs e)
        {
            var name = txtName.Text;
            var contactNumber = txtContactNumber.Text;
            var designation = txtDesignation.Text;
            var email = txtEmail.Text;
            var fax = txtFax.Text;
            var address = txtAddress.Text;
            var nic = txtNIC.Text;

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

            try
            {
                db.SaveChanges();
                MessageBox.Show("Successfully Saved!");
                RefreshGrid();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        void RefreshGrid()
        {
            dgCustomers.DataSource = db.tblCustomers.ToList();

        }

        private void AddCustomers_Load(object sender, EventArgs e)
        {
            RefreshGrid();
        }
    }
}
