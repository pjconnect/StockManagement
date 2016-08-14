using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BarcodeLib;
using System.Drawing.Printing;

namespace StockManagemengBasic
{
    public partial class StockReceive : UserControl
    {
        int supplierID = 0;
        StockmanagementEntities db = new StockmanagementEntities();
        private Image barcodeImg;

        public StockReceive()
        {
            InitializeComponent();
            loadGrid();
        }

        private void StockReceive_Load(object sender, EventArgs e)
        {

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
            var lotNumber = 1;

            #region Managing Log

            //  WE DO NOT MANAGE LOT LOL WTF. TOD: DELETE THE COLUMN
            if (SystemProperties.IsLotManage)
            {
                lotNumber = db.tblStockItems.Where(t => t.StockID == ItemID).Select(t => t).Count() + 1;
            }
            else
            {
                //update all columns to new price
            }
            #endregion

            var newStockReciev = new tblStockItem()
            {
                Qty = qty,
                PurchasePrice = purchasedPrice,
                SellPrice = sellPrice,
                InvoiceNumber = invoiceNumber,
                Date = stockRecievDate,
                CreatedDate = DateTime.Now,
                StockID = ItemID,
                LotNumber = lotNumber, 
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
                return;
            }

            GenerateBarcode(newStockReciev.ID.ToString()); // TODO: If this is a lot enable, edit this
            
        }

        void GenerateBarcode(string StockID)
        {
            Barcode barcode = new Barcode()
            {
                IncludeLabel = true,
                Alignment = AlignmentPositions.CENTER,
                Width = 250,
                Height = 80,
                RotateFlipType = RotateFlipType.RotateNoneFlipNone,
                BackColor = Color.White,
                ForeColor = Color.Black,
            };

            barcodeImg = barcode.Encode(TYPE.CODE128B, StockID);
            pbBarcode.Image = barcodeImg;

        }

        private void loadGrid()
        {
            var collection = from stocks in db.tblStocks
                             select new { ID = stocks.ID, Name = stocks.ItemName, TotalQty = db.tblStockItems.Where(t => t.StockID == stocks.ID).Select(t => t.Qty).Sum() };
            dgStock.DataSource = collection;
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            PrintDocument pd = new PrintDocument();
            pd.PrintPage += PrintPage;
            //pd.Print();
            //new PrintPreviewControl();
            // TODO: Add print preveiw
        }

        private void PrintPage(object o, PrintPageEventArgs e)
        {
            System.Drawing.Image img = barcodeImg;
            Point loc = new Point(280, 80);
            e.Graphics.DrawImage(img, loc);

            img.Dispose();
        }

        private void dgStock_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            var StockID = dgStock.SelectedRows[0].Cells["ID"].Value.ToString();

            var selectedStock = db.tblStocks.Where(t => t.ID == StockID).Select(t => t).First();

            txtSelectedStockID.Text = selectedStock.ID;
            txtSelectedItemName.Text = selectedStock.ItemName;

            var selectedStockItems = db.tblStockItems.Where(t => t.StockID == StockID).Select(t => t);

            dgStockItems.DataSource = selectedStockItems.Select(t=>new { t.ID, t.Qty, t.SellPrice, t.PurchasePrice,  });
        }
    }
}
