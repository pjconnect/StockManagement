﻿using System;
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
        int customerID = 0;

        public AddInvoice()
        {
            InitializeComponent();
            isFirstTime = true;
            invoiceID = 0;
        }

        private void AddInvoice_Load(object sender, EventArgs e)
        {
            clear();
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
                    total = (decimal)(itemCount - sellCount) - qty;
                }
                else
                {
                    total = (decimal)(itemCount - qty);
                }

                if (total <= 0) { MessageBox.Show("This Item is out of stock!"); return; }

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
                        CustomerID = customerID,
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
            int paymentType = 0;
            

            decimal balance = 0;

            try
            {
                cash = Convert.ToDecimal(txtCash.Text);
                credit = Convert.ToDecimal(txtCredit.Text);
                cheque = Convert.ToDecimal(txtCheque.Text);

                if(cash < 0 || credit < 0 || cheque < 0)
                {
                    MessageBox.Show("You have 'minus (-)' Value one of text fields, please correct them ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            //pay type algorithm
            if (txtCash.Text != 0.ToString())
            {
                paymentType++;
            }
            if (txtCredit.Text != 0.ToString())
            {
                paymentType += 2;
            }
            if (txtCredit.Text != 0.ToString())
            {
                paymentType += 3;
            }

            if (total <= (cash + credit + cheque))
            {
                var invoice = db.tblInvoices.Where(t => t.ID == invoiceID).Select(t => t).First();
                invoice.IsPaid = true;
                invoice.CreditReceived = credit;
                invoice.CashReceived = cash;
                invoice.ChequeRecieved = cheque;
                invoice.PaymentType = paymentType;

                balance = total - (cash + credit + cheque);
                txtBalance.Text = balance.ToString();

            }
            else
            {
                MessageBox.Show("Can not pay less than the total amount");
                return;
            }

            //if credit go to credit
            if (cheque > 0)
            {
                if (txtChequeNumber.Text.Length < 5)
                {
                    MessageBox.Show("Please Enter Valid Cheque Number");
                    return;
                }

                var newbank = new tblBank()
                {
                    Amount = cheque,
                    ChequeNumber = txtChequeNumber.Text,
                    ChequeState = 1,
                    Date = dtpRealiseDate.Value,
                    ReleaseDate = DateTime.Now,
                };

                db.tblBanks.AddObject(newbank);
            }

            //if bank go to bank
            if(credit > 0)
            {
                if(customerID <= 0)
                {
                    MessageBox.Show("You must first enter customer before pay by credit");
                    return;
                }

                var newcredit = new tblCredit()
                {
                    Credit = credit,
                    Debt = 0,
                    CustomerID = customerID,
                    Date = DateTime.Now,
                };

                db.tblCredits.AddObject(newcredit);
            }

            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            MessageBox.Show("Successfully Saved ", "Success");

            clear();

        }

        void clear()
        {
            dgCart.DataSource = null;
            txtCash.Text = 0.ToString();
            txtCheque.Text = 0.ToString();
            txtCredit.Text = 0.ToString();
            txtTotal.Text = 0.ToString();
            txtQty.Text = 1.ToString();
            txtBalance.Text = 0.ToString();
            txtCustomerName.Text = string.Empty;
            txtChequeNumber.Text = string.Empty;
            dtpRealiseDate.Value = DateTime.Now;
            txtDiscount.Text = string.Empty;
            cmbDiscountType.SelectedIndex = 0;
            txtItemID.Text = string.Empty;
        }

        private void btnSearchCustomer_Click(object sender, EventArgs e)
        {
            var customerSearch = new CustomerSearch();
            customerSearch.Show();
            customerSearch.CustomerSelect += CustomerSearch_CustomerSelect;
        }

        private void CustomerSearch_CustomerSelect(int CustomerID)
        {
            
        }

        private void btnNewCustomer_Click(object sender, EventArgs e)
        {
            var customerSearch = new AddCustomers();
            customerSearch.Show();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            var searchStock = new SearchStock();
            searchStock.Show();
            searchStock.SelectStock += SearchStock_SelectStock;
        }

        private void SearchStock_SelectStock(string stockID)
        {
            txtItemID.Text = stockID;
        }
    }
}
