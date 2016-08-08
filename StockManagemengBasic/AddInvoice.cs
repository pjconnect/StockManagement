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
    public partial class AddInvoice : Form
    {

        StockmanagementEntities db = new StockmanagementEntities();
        decimal totalAmount = 0;
        bool isFirstTime = true;
        int invoiceID = 0;

        public AddInvoice()
        {
            InitializeComponent();
            isFirstTime = true;
            invoiceID = 0;
        }

        private void btnAddItem_Click(object sender, EventArgs e)
        {
            var itemID = txtItemID.Text;

            var item = db.tblStocks.Where(t => t.ID == itemID).Select(t => t).ToList();

            if (item.Count() > 0)
            {
                var selectedItem = item.First();

                if (isFirstTime)
                {
                    isFirstTime = false;
                    //add to invoice
                    var newInvoice = new tblInvoice()
                    {
                        IsPaid = false,
                        CustomerID = 0, //todo
                        DebterID = 0,
                        PaymentType = 1,
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
                    SellingPrice = selectedItem.SellPrice,
                    Qty = 1, // todo
                    ItemID = selectedItem.ID,
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

                totalAmount += selectedItem.SellPrice;
                txtTotal.Text = totalAmount.ToString();
            }
            else
            {
                MessageBox.Show("Item not found please use search instead");
            }
        }

        private void AddInvoice_Load(object sender, EventArgs e)
        {

        }

        private void btnPay_Click(object sender, EventArgs e)
        {
            //todo
            txtCash.Text = 0.ToString();
            txtCheque.Text = 0.ToString();
            txtCredit.Text = 0.ToString();

            var total = Convert.ToDecimal(txtTotal.Text);
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
                var invoice = db.tblInvoices.Where(t => t.ID == invoiceID).Select(t=>t).First();
                invoice.IsPaid = true;
                invoice.CreditReceived = credit;
                invoice.CashReceived = cash;
                invoice.ChequeRecieved = cheque;
                invoice.PaymentType = 0; //todo

                balance = total - (cash + credit + cheque);
                txtBalance.Text = balance.ToString();
            }
            else
            {
                MessageBox.Show("Can not pay less than the total amount");
                return;
            }

        }
    }
}
