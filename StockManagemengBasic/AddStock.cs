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
    public partial class AddStock : Form
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public AddStock()
        {
            InitializeComponent();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            var itemID = txtItemID.Text;
            var model = txtModel.Text;
            var brand = txtBrand.Text;
            var itemname = txtItemName.Text;

            var supplierid = txtSuppierID.Text; // todo supplier select
            var alert = txtAlertQty.Text;
            decimal puchasePrice = 0;
            var alertqty = 0;

            try
            {
                puchasePrice = Convert.ToDecimal(txtPurchasePrice.Text);
                alertqty = Convert.ToInt32(txtAlertQty.Text);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Please Enter valid information", ex.Message);
            }

            tblStock newstock = new tblStock()
            {
                AlertQty = alertqty,
                Brand = brand,
                ItemName = itemname,
                ID = itemID,
                Model = model,
                PurchasePrice = puchasePrice,

            };

            db.tblStocks.AddObject(newstock);

            try
            {
                db.SaveChanges();

                MessageBox.Show("Successfull inserted");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new SupplierIn().Show();
        }
    }
}
