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
    public partial class StockReceive : UserControl
    {
        int supplierID = 0;
        StockmanagementEntities db = new StockmanagementEntities();

        public StockReceive()
        {
            InitializeComponent();
            loadGrid();
        }

        private void btnSearchSupplier_Click(object sender, EventArgs e)
        {
            var supplierSearch = new SupplierSearch();
            supplierSearch.Show();
            supplierSearch.SupplierSelect += SupplierSearch_SupplierSelect;
        }

        private void SupplierSearch_SupplierSelect(int SupplierID)
        {
            supplierID = SupplierID;

           //db.tblInvoices.Where(t => t.ID == invoiceID).Select(t => t).First();
            var supplier = db.tblSuppliers.Where(t => t.ID == supplierID).First();
            txtspName.Text = supplier.Name;
            txtspContact.Text = supplier.ContactNumber;
            txtspEmail.Text = supplier.Email;
            txtspNIC.Text = supplier.NIC;
            txtspFax.Text = supplier.Fax;

        }

        private void btnInsert_Click(object sender, EventArgs e)
        {

            if (supplierID == 0)
            {
                MessageBox.Show("Please select a supplier first");
                return;
            }

            decimal qty = 0;
            decimal purchasedPrice = 0;
            decimal sellPrice = 0;
            string ItemID = "";
            
            try 
            {	        
    		    qty = Convert.ToDecimal(txtQty.Text);
                purchasedPrice = Convert.ToDecimal(txtPurchasedPrice.Text);
                sellPrice = Convert.ToDecimal(txtSellPrice.Text);
                ItemID = dgStock.SelectedRows[0].Cells["ID"].Value.ToString();
                
	        }
	        catch (Exception ex)
	        {
		        MessageBox.Show(ex.Message);
                return;
	        }

            var invoiceNumber = txtInvoiceNumber.Text;
            var stockRecievDate = dtpStockRecieveDate.Value;

            var newStockReciev = new tblStockItem()
            {
                Qty = qty,
                PurchasePrice = purchasedPrice,
                SellPrice = sellPrice,
                InvoiceNumber = invoiceNumber,
                Date = stockRecievDate,
                CreatedDate = DateTime.Now,
                StockID = ItemID,
            };

            db.tblStockItems.AddObject(newStockReciev);

            try
            {
                db.SaveChanges();
                MessageBox.Show("Successfully Saved!");
                loadGrid();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void loadGrid()
        {
            var collection = from stocks in db.tblStocks
                             select new { ID = stocks.ID, Name = stocks.ItemName, TotalQty = db.tblStockItems.Where(t => t.StockID == stocks.ID).Select(t => t.Qty).Sum() };
            dgStock.DataSource = collection;
        }


    }
}
