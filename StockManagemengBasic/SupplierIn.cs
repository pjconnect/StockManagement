using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StockManagemengBasic
{
    public partial class SupplierIn : UserControl
    {

        StockmanagementEntities db = new  StockmanagementEntities();
        int supplierID = -1;

        public SupplierIn()
        {
            InitializeComponent();
            loadGrid();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            var message = "";
            var name = txtName.Text;
            var contact = txtContact.Text;
            var email = txtEmail.Text;
            var address = txtAddress.Text;
            var nic = txtNIC.Text;
            var fax = txtFax.Text;
            var comment = txtComment.Text;

            var suppliers = db.tblSuppliers.Where(t => t.ID == supplierID);
            if (suppliers.Count() > 0)
            {
                var firstResult = suppliers.First();

                firstResult.Name = name;
                firstResult.ContactNumber = contact;
                firstResult.Email = email;
                firstResult.Address = address;
                firstResult.NIC = nic;
                firstResult.Fax = fax;
                firstResult.Comment = comment;
                supplierID = -1;
                message = "Successfully Updated";
            }
            else
            {
                tblSupplier newSupplier = new tblSupplier()
                {
                    Name = name,
                    ContactNumber = contact,
                    Email = email,
                    Address = address,
                    NIC = nic,
                    Fax = fax,
                    Comment = comment,
                    CreatedDate = DateTime.Now
                };
                db.tblSuppliers.AddObject(newSupplier);
                message = "Successfully Saved";
            }


            try
            {
                db.SaveChanges();
                MessageBox.Show(message);
                loadGrid();
                clearForm();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void loadGrid() {
            dgSuppliers.DataSource = db.tblSuppliers.ToList();
        }

        private void dgSuppliers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1)
            {
                return;
            }

            var id = Convert.ToInt32(dgSuppliers.SelectedRows[0].Cells["ID"].Value);

            var selectedSupplier = db.tblSuppliers.Where(t=>t.ID == id).First();

            supplierID = selectedSupplier.ID;
            txtName.Text = selectedSupplier.Name;
            txtContact.Text = selectedSupplier.ContactNumber;
            txtEmail.Text = selectedSupplier.Email;
            txtAddress.Text = selectedSupplier.Address;
            txtNIC.Text = selectedSupplier.NIC;
            txtFax.Text = selectedSupplier.Fax;
            txtComment.Text = selectedSupplier.Comment;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            clearForm();   
        }

        private void clearForm() {
            supplierID = -1;
            txtName.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            txtNIC.Text = "";
            txtFax.Text = "";
            txtComment.Text = "";
        }
        
    }
}
