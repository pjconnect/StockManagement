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
        private int selectedStockItemID = 0;

        public StockReceive()
        {
            InitializeComponent();
            loadGrid();
        }

        private void StockReceive_Load(object sender, EventArgs e)
        {
            SelectedStockInformation();
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
            var stockItemID = 0;
            if (selectedStockItemID != 0)
            {
                var stockItem = db.tblStockItems.Where(t => t.ID == selectedStockItemID).Select(t => t).FirstOrDefault();
                stockItem.Qty = qty;
                stockItem.PurchasePrice = purchasedPrice;
                stockItem.SellPrice = sellPrice;
                stockItem.InvoiceNumber = invoiceNumber;
                stockItem.Date = stockRecievDate;
                stockItem.CreatedDate = DateTime.Now;
                stockItem.StockID = ItemID;
                stockItem.LotNumber = lotNumber;
                stockItem.SupplierID = supplierID;

                stockItemID = selectedStockItemID;

                try
                {
                    db.SaveChanges();
                    MessageBox.Show("Successfully Updated!");
                    loadGrid();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }

            }
            else
            {
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
                    SupplierID = supplierID,
                };

                db.tblStockItems.AddObject(newStockReciev);

                try
                {
                    db.SaveChanges();
                    MessageBox.Show("Successfully Inserted!");
                    loadGrid();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }

                stockItemID = newStockReciev.ID;
            }

            GenerateBarcode(stockItemID.ToString());

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
            SelectedStockInformation();

            pbBarcode.Image = null;
            txtQty.Text = string.Empty;
            txtPurchasedPrice.Text = string.Empty;
            txtSellPrice.Text = string.Empty;
            supplierID = 0;
            txtspName.Text = string.Empty;
            txtspContact.Text = string.Empty;
            this.selectedStockItemID = 0;
            txtStockItemID.Text = string.Empty;

        }

        void SelectedStockInformation()
        {
            var StockID = dgStock.SelectedRows[0].Cells["ID"].Value.ToString();

            var selectedStock = db.tblStocks.Where(t => t.ID == StockID).Select(t => t).First();

            txtSelectedStockID.Text = selectedStock.ID;
            txtSelectedItemName.Text = selectedStock.ItemName;

            var selectedStockItems = db.tblStockItems.Where(t => t.StockID == StockID).Select(t => t);

            dgStockItems.DataSource = selectedStockItems.Select(t => new { t.ID, t.Qty, t.SellPrice, t.PurchasePrice, });
        }

        private void dgStockItems_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var StockItemID = Convert.ToInt32(dgStockItems.SelectedRows[0].Cells["ID"].Value);

                var SelectedStockItem = db.tblStockItems.Where(t => t.ID == StockItemID).Select(t => t).First();

                txtPurchasedPrice.Text = SelectedStockItem.PurchasePrice.ToString();
                txtSellPrice.Text = SelectedStockItem.SellPrice.ToString();
                txtQty.Text = SelectedStockItem.Qty.ToString();
                txtInvoiceNumber.Text = SelectedStockItem.InvoiceNumber;

                if (SelectedStockItem.SupplierID != null)
                {
                    SupplierSearch_SupplierSelect((int)SelectedStockItem.SupplierID);
                }

                GenerateBarcode(SelectedStockItem.ID.ToString());

                selectedStockItemID = SelectedStockItem.ID;

                txtStockItemID.Text = selectedStockItemID.ToString();
            }
        }
    }
}
