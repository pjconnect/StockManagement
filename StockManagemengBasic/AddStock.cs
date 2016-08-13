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
    public partial class AddStock : UserControl
    {
        StockmanagementEntities db = new StockmanagementEntities();

        public AddStock()
        {
            InitializeComponent();
            RefreshStockGrid();
            dgStock.ReadOnly = true;
        }

        void RefreshStockGrid()
        {
            dgStock.DataSource = db.tblStocks.ToList();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            
            #region init variables

            var itemID = txtItemID.Text;
            var model = txtModel.Text;
            var brand = txtBrand.Text;
            var itemname = txtItemName.Text;

            var alert = txtAlertQty.Text;
            decimal puchasePrice = 0;
            var alertqty = 0;
            try
            {
                alertqty = Convert.ToInt32(txtAlertQty.Text);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Please Enter valid information", ex.Message);
                return;
            }

            #endregion
            var message = String.Empty;
            var updateitem = db.tblStocks.Where(t => t.ID == itemID);

            if (updateitem.Count() > 0)
            {

                var firstitem = updateitem.First();

                firstitem.AlertQty = alertqty;
                firstitem.Brand = brand;
                firstitem.ItemName = itemname;
                firstitem.ID = itemID;
                firstitem.Model = model;
                message = "Successfully Updated";
                firstitem.CreatedDate = DateTime.Now;
            }
            else
            {

                tblStock newstock = new tblStock()
                {
                    AlertQty = alertqty,
                    Brand = brand,
                    ItemName = itemname,
                    ID = itemID,
                    Model = model,
                    CreatedDate = DateTime.Now,

                };

                db.tblStocks.AddObject(newstock);
                message = "Successfully Inserted";
            }

            try
            {
                db.SaveChanges();
                MessageBox.Show(message);
                clearForm();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            RefreshStockGrid();

            itemID = string.Empty;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new SupplierIn().Show();
        }

        private void dgStock_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1)
            {
                return;
            }

            var gridSelectedRow = dgStock.SelectedRows[0];
            var id = gridSelectedRow.Cells["ID"].Value;

            var selectedRow = db.tblStocks.Where(t => t.ID == id).First();

            txtBrand.Text = selectedRow.Brand;
            txtItemID.Text = selectedRow.ID;
            txtItemName.Text = selectedRow.ItemName;
            txtModel.Text = selectedRow.Model;
            txtAlertQty.Text = selectedRow.AlertQty.ToString();

        }

        private void clearForm() {
            txtBrand.Text = "";
            txtItemID.Text = "";
            txtItemName.Text = "";
            txtModel.Text = "";
            txtAlertQty.Text = "";
        }
    }
}
