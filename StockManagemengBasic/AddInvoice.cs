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
    public partial class AddInvoice : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();
        bool isFirstTime = true;
        int invoiceID = 0;
        decimal totalPrice = 0;

        public AddInvoice()
        {
            InitializeComponent();
            isFirstTime = true;
            invoiceID = 0;
        }

        private void AddInvoice_Load(object sender, EventArgs e)
        {
            txtCash.Text = 0.ToString();
            txtCheque.Text = 0.ToString();
            txtCredit.Text = 0.ToString();
            txtTotal.Text = 0.ToString();
            txtQty.Text = 1.ToString();
        }

        private void btnAddItem_Click(object sender, EventArgs e)
        {
            var itemID = txtItemID.Text;
            var item = db.tblStocks.Where(t => t.ID == itemID).Select(t => t).ToList();
            var stockItems = db.tblStockItems.Where(t => t.StockID == itemID).Select(t => t).ToList();

            if (item.Count() > 0 && stockItems.Count() > 0)
            {
                var selectedStock = item.First();
                var selectedStockItem = stockItems.First();

                var itemCount = db.tblStockItems.Where(t => t.StockID == selectedStock.ID).Select(t => t.Qty).Sum();
                var sellCount = (from invoice in db.tblInvoices
                                 join invoiceItems in db.tblInvoiceItems on invoice.ID equals invoiceItems.InvoiceID
                                 where invoice.IsPaid == true
                                 select invoiceItems.Qty).Sum();

                var qty = Convert.ToInt32(txtQty.Text);
                if (qty <= 0) { MessageBox.Show("Please Select Valid Qty"); return; }

                decimal total = 0;
                if (sellCount != null)
                {
                    total = (decimal) (itemCount - sellCount) - qty;
                }
                else
                {
                    total = (decimal) (itemCount - qty);
                }

                if (total <= 0){ MessageBox.Show("This Item is out of stock!"); return; }

                var totalItemPrice = selectedStockItem.SellPrice * qty;                
                this.totalPrice += totalItemPrice;
                txtTotal.Text = this.totalPrice.ToString();
                txtCash.Text = this.totalPrice.ToString();

                // insert into Invoice table
                if (isFirstTime)
                {
                    isFirstTime = false;
                    var newInvoice = new tblInvoice()
                    {
                        IsPaid = false,
                        CustomerID = 0, // TODO: add customer ID
                        PaymentType = 0,
                        CreatedDate = DateTime.Now,
                        CashierID = 0, // TODO: add chashier ID
                    };

                    db.tblInvoices.AddObject(newInvoice);
                    try
                    {
                        db.SaveChanges();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                        return;
                    }

                    invoiceID = newInvoice.ID;
                }

                var newInvoiceItem = new tblInvoiceItem()
                {
                    InvoiceID = invoiceID,
                    Qty = qty,
                    ItemID = selectedStock.ID,
                    SellingPrice = selectedStockItem.SellPrice, // TODO: May be no need sell price because we have itemprice and discount
                    ItemPrice = selectedStockItem.SellPrice,
                };

                db.tblInvoiceItems.AddObject(newInvoiceItem);

                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.Message);
                    return;
                }
                dgCart.DataSource = db.tblInvoiceItems.Where(t => t.InvoiceID == invoiceID).ToList();
            }
            else
            {
                MessageBox.Show("Item not found please use search instead");
            }
        }


        private void btnPay_Click(object sender, EventArgs e)
        {

            // TODO: discount

            var total = totalPrice;
            decimal cash = 0;
            decimal credit = 0;
            decimal cheque = 0;

            decimal balance = 0;

            try
            {
                cash = Convert.ToDecimal(txtCash.Text);
                credit = Convert.ToDecimal(txtCredit.Text);
                cheque = Convert.ToDecimal(txtCheque.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            if (total > (cash + credit + cheque))
            {
                var invoice = db.tblInvoices.Where(t => t.ID == invoiceID).Select(t => t).First();
                invoice.IsPaid = true;
                invoice.CreditReceived = credit;
                invoice.CashReceived = cash;
                invoice.ChequeRecieved = cheque;
                invoice.PaymentType = 0; // TODO pay type algorighm

                balance = total - (cash + credit + cheque);
                txtBalance.Text = balance.ToString();
            }
            else
            {
                MessageBox.Show("Can not pay less than the total amount");
                return;
            }

            // todo: if credit go to credit

            //todo: if bank go to bank

        }

        private void btnSearchCustomer_Click(object sender, EventArgs e)
        {
            var customerSearch = new CustomerSearch();
            customerSearch.Show();
        }

        private void btnNewCustomer_Click(object sender, EventArgs e)
        {
            var customerSearch = new AddCustomers();
            customerSearch.Show();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            new SearchStock().Show();
        }
    }
}
