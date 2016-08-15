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
        decimal totalDiscountedPrice = 0;
        decimal totalDiscount = 0;
        decimal balance = 0;
        int customerID = 0;

        decimal cash = 0;
        decimal credit = 0;
        decimal cheque = 0;
        int paymentType = 0; // cash, credit or cheque

        public AddInvoice()
        {
            InitializeComponent();
        }

        private void AddInvoice_Load(object sender, EventArgs e)
        {
            Clear();
            DisableTextboxes();

            txtItemID.Focus();
        }

        void AddToCart()
        {
            var stockItemID = Convert.ToInt32(txtItemID.Text);
            var stockID = db.tblStockItems.Where(t => t.ID == stockItemID).Select(t => t.StockID).First();
            var stock = db.tblStocks.Where(t => t.ID == stockID).Select(t => t).ToList();
            var stockItems = db.tblStockItems.Where(t => t.StockID == stockID).Select(t => t).ToList();

            if (stock.Count() > 0 && stockItems.Count() > 0)
            {
                var selectedStock = stock.First();
                var selectedStockItem = stockItems.First();

                var itemCount = db.tblStockItems.Where(t => t.StockID == selectedStock.ID).Select(t => t.Qty).Sum();
                var sellCount = (from invoice in db.tblInvoices
                                 join invoiceItems in db.tblInvoiceItems on invoice.ID equals invoiceItems.InvoiceID
                                 where invoice.IsPaid == true
                                 select invoiceItems.Qty).Sum();

                var qty = Convert.ToDecimal(txtQty.Text);
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
                        CashierID = SystemProperties.CurrentLoginUserID,
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
                    StockID = selectedStock.ID,
                    SoldPrice = selectedStockItem.SellPrice, // TODO: May be no need sell price because we have itemprice and discount
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

                dgCart.DataSource = db.tblInvoiceItems.Where(t => t.InvoiceID == invoiceID).Select(t => new { t.StockID, t.ItemPrice, t.Qty, ItemName = db.tblStocks.Where(si => si.ID == t.StockID).Select(si => si.ItemName).FirstOrDefault() });
            }
            else
            {
                MessageBox.Show("Item not found please use search instead");
                return;
            }

            CalculateBalance();
            EnableTextboxes();

        }

        private void btnAddItem_Click(object sender, EventArgs e)
        {
            AddToCart();
        }

        private void btnPay_Click(object sender, EventArgs e)
        {

            CalculateDiscout();
            CalculateBalance();

            var discountType = cmbDiscountType.SelectedIndex + 1;

            try
            {
                cash = Convert.ToDecimal(txtCash.Text);
                credit = Convert.ToDecimal(txtCredit.Text);
                cheque = Convert.ToDecimal(txtCheque.Text);

                if (cash < 0 || credit < 0 || cheque < 0)
                {
                    MessageBox.Show("You have 'minus (-)' Value one of text fields, please correct them ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            var total = (totalDiscount == 0) ? totalPrice : totalDiscountedPrice;

            if (total <= 0)
            {
                MessageBox.Show("Total Canot be less than 0");
                return;
            }

            //pay type algorithm
            if (txtCash.Text != 0.ToString())
            {
                paymentType += 1;
            }
            if (txtCredit.Text != 0.ToString())
            {
                paymentType += 3;
            }
            if (txtCredit.Text != 0.ToString())
            {
                paymentType += 5;
            }

            if (total <= (cash + credit + cheque))
            {

                if(credit > 0 || cheque > 0)
                {
                    if (balance != 0)
                    {
                        MessageBox.Show("If you pay by 'Credit' or 'Cheque' Make sure your balance is 0 ");
                        return;
                    }
                }

                var invoice = db.tblInvoices.Where(t => t.ID == invoiceID).Select(t => t).First();
                invoice.IsPaid = true;
                invoice.CreditReceived = credit;
                invoice.CashReceived = cash;
                invoice.ChequeRecieved = cheque;
                invoice.PaymentType = paymentType;
                invoice.Discount = totalDiscount;
                invoice.DiscountType = discountType;

            }
            else
            {
                MessageBox.Show("Can not pay less than the total amount");
                return;
            }

            
            //if bank go to bank
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
                    InvoiceID = invoiceID,
                };

                db.tblBanks.AddObject(newbank);

            }

            //if credit go to credit
            if (credit > 0)
            {
                if (customerID <= 0)
                {
                    MessageBox.Show("You must first enter customer before pay by credit");
                    return;
                }

                var newcredit = new tblCreditor()
                {
                    Credit = credit ,
                    Debt = 0,
                    CustomerID = customerID,
                    Date = DateTime.Now,
                    InvoiceID = invoiceID,
                    Title = "Transaction by Invoice " + invoiceID,
                };

                db.tblCreditors.AddObject(newcredit);
            }

            //if cash go to cash
            if(cash > 0)
            {
                var newcash = new tblCashbook()
                {
                    Credit = cash - Math.Abs(balance),
                    Date = DateTime.Now,
                    InvoiceID = invoiceID,
                    Title = "Transaction by Invoice "+invoiceID,
                };

                db.tblCashbooks.AddObject(newcash);
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



            Reports.InvoiceViewer invoiceReport = new Reports.InvoiceViewer(invoiceID);
            invoiceReport.Show();

            Clear();

        }

        private void btnSearchCustomer_Click(object sender, EventArgs e)
        {
            var customerSearch = new CustomerSearch();
            customerSearch.Show();
            customerSearch.CustomerSelect += CustomerSearch_CustomerSelect;
        }

        private void CustomerSearch_CustomerSelect(int CustomerID)
        {
            this.customerID = CustomerID;
            var selectedCustomer = db.tblCustomers.Where(t => t.ID == customerID).Select(t => t).FirstOrDefault();
            txtCustomerName.Text = selectedCustomer.CustomerName;
            txtContactNumber.Text = selectedCustomer.ContactNumber;

            //calculate debt
            var customerCredit = db.tblCreditors.Where(t => t.CustomerID == selectedCustomer.ID).Select(t => t);
            if (customerCredit.Count() > 0)
            {
                var credit = customerCredit.Select(t => t.Credit).Sum();
                var debt = customerCredit.Select(t => t.Debt).Sum();
                var total = credit - debt;
                lblTotalCredit.Text = total.ToString();
            }
        }

        private void btnNewCustomer_Click(object sender, EventArgs e)
        {
            var popup = new UserControlDialog();
            var customerSearch = new AddCustomers();
            popup.ClientSize = customerSearch.Size;
            popup.Controls.Add(customerSearch);
            popup.Show();
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

        private void txtDiscount_TextChanged(object sender, EventArgs e)
        {
            CalculateBalance();
        }

        private void cmbDiscountType_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateBalance();
        }

        private void txtCash_TextChanged(object sender, EventArgs e)
        {
            CalculateBalance();
        }

        private void txtCheque_TextChanged(object sender, EventArgs e)
        {
            CalculateBalance();

        }

        private void txtCredit_TextChanged(object sender, EventArgs e)
        {
            CalculateBalance();

        }

        void Clear()
        {

            isFirstTime = true;
            invoiceID = 0;
            totalPrice = 0;
            totalDiscountedPrice = 0;
            totalDiscount = 0;
            customerID = 0;

            cash = 0;
            credit = 0;
            cheque = 0;
            paymentType = 0; // cash, credit or cheque

            dgCart.DataSource = null;
            txtCash.Text = 0.ToString();
            txtCheque.Text = 0.ToString();
            txtCredit.Text = 0.ToString();
            txtTotal.Text = 0.ToString();
            txtQty.Text = 1.ToString();
            txtBalance.Text = 0.ToString();
            txtCustomerName.Text = string.Empty;
            txtChequeNumber.Text = string.Empty;

            dtpRealiseDate.MinDate = DateTime.Now;
            dtpRealiseDate.Value = DateTime.Now;

            txtDiscount.Text = string.Empty;
            cmbDiscountType.SelectedIndex = 0;
            txtItemID.Text = string.Empty;
            lblTotalAmountDescription.Text = string.Empty;
            txtContactNumber.Text = string.Empty;



        }

        void ZerofyPayTextboxes()
        {
            if (txtCash.Text == string.Empty)
            {
                txtCash.Text = 0.ToString();
            }
            if (txtCredit.Text == string.Empty)
            {
                txtCredit.Text = 0.ToString();
            }
            if (txtCash.Text == string.Empty)
            {
                txtCheque.Text = 0.ToString();
            }
        }

        void CalculateDiscout()
        {
            int discount = 0;
            var discountType = cmbDiscountType.Text;
            if (txtDiscount.Text.Trim() == string.Empty)
            {
                txtDiscount.Text = 0.ToString();
            }
            try
            {
                discount = Convert.ToInt32(txtDiscount.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            if (discountType == "%")
            {
                totalDiscount = ((decimal)discount / 100) * totalPrice;
                totalDiscountedPrice = totalPrice - totalDiscount;

            }
            else
            {
                discount = Convert.ToInt32(txtDiscount.Text);
                totalDiscount = discount;
                totalDiscountedPrice = totalPrice - totalDiscount;
            }
            if (totalDiscount > 0)
            {
                lblTotalAmountDescription.Text = "Total: " + totalPrice + " | " + "Discount: " + totalDiscount;
            }

        }

        void CalculateBalance()
        {
            CalculateDiscout();

            var totalAmount = (totalDiscountedPrice > 0) ? totalDiscountedPrice : totalPrice;
            try
            {
                if (txtCash.Text != string.Empty && txtCredit.Text != string.Empty && txtCheque.Text != string.Empty)
                {
                    cash = Convert.ToDecimal(txtCash.Text);
                    credit = Convert.ToDecimal(txtCredit.Text);
                    cheque = Convert.ToDecimal(txtCheque.Text);
                }
                else
                {
                    ZerofyPayTextboxes();
                }

                if (cash < 0 || credit < 0 || cheque < 0)
                {
                    MessageBox.Show("You have 'minus (-)' Value in one of text fields, please correct them ");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            var totalPay = cash + credit + cheque;
            balance = totalPay - totalAmount;
            txtBalance.Text = balance.ToString();
            txtTotal.Text = (totalDiscount == 0) ? totalAmount.ToString() : totalDiscountedPrice.ToString();

        }

        void EnableTextboxes()
        {
            txtCash.Enabled = true;
            txtCredit.Enabled = true;
            txtCheque.Enabled = true;
            txtChequeNumber.Enabled = true;
            dtpRealiseDate.Enabled = true;
            txtDiscount.Enabled = true;
            cmbDiscountType.Enabled = true;
            btnPay.Enabled = true;
        }

        void DisableTextboxes()
        {
            txtCash.Enabled = false;
            txtCredit.Enabled = false;
            txtCheque.Enabled = false;
            txtChequeNumber.Enabled = false;
            dtpRealiseDate.Enabled = false;
            txtDiscount.Enabled = false;
            cmbDiscountType.Enabled = false;
            btnPay.Enabled = false;
        }

        private void txtItemID_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                AddToCart();
            }
        }

        private void txtQty_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)13)
            {
                AddToCart();
            }
        }
    }
}
