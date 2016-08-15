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
    public partial class CreditorPay : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();
        int selectedCustomer = -1;
        int selectedInvoice = -1;

        public CreditorPay()
        {
            InitializeComponent();
        }

        private void btnCustomerSearch_Click(object sender, EventArgs e)
        {
            var customerSearch = new CustomerSearch();
            customerSearch.Show();
            customerSearch.CustomerSelect += SelectCustomer;
        }

        private void SelectCustomer(int customerID)
        {
            var selectedCustomer = db.tblCustomers.Where(t => t.ID == customerID).First();
            this.selectedCustomer = selectedCustomer.ID;
            txtName.Text = selectedCustomer.CustomerName;
            txtNIC.Text = selectedCustomer.NIC;
            txtContactNumber.Text = selectedCustomer.ContactNumber;
            loadGrid();
        }

        private void loadGrid() { 
            if(this.selectedCustomer != -1){
                dgCreditList.DataSource = (from creditor in db.tblCreditors
                          where creditor.CustomerID == this.selectedCustomer
                          group creditor by creditor.InvoiceID into g
                          select new {
                            Invoice = g.Key,
                            Credit = g.Sum(t=>t.Credit) - g.Sum(t=>t.Debt)
                          }).ToList();
            }
        }

        private void dgCreditList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.RowIndex == -1){
                return;
            }
            try
            {
                var invoice = Convert.ToInt32(dgCreditList.SelectedRows[0].Cells["Invoice"].Value);
                var creditRecord = (from creditor in db.tblCreditors
                                    where creditor.InvoiceID == invoice && creditor.CustomerID == this.selectedCustomer
                                    group creditor by creditor.InvoiceID into g
                                    select new
                                    {
                                        Invoice = (int)g.Key,
                                        Credit = (decimal)(g.Sum(t => t.Credit) - g.Sum(t => t.Debt))
                                    }).First();
                this.selectedInvoice = creditRecord.Invoice;
                txtCredit.Text = creditRecord.Credit.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Invalid Invoice Selected");
            }
        }

        private void calculateBalance()
        {
            try
            {
                Decimal received = Convert.ToDecimal(txtRecieved.Text);
                Decimal paying = Convert.ToDecimal(txtPaying.Text);
                Decimal balance = received - paying;
                txtBalance.Text = balance.ToString("n2");

            }
            catch (Exception ex)
            {
                txtBalance.Text = 0.ToString("n2");
            }
        }

        private void btnPay_Click(object sender, EventArgs e)
        {
            if (selectedCustomer == -1)
            {
                MessageBox.Show("Please Select a Customer!");
                return;
            }
            if (selectedInvoice == -1)
            {
                MessageBox.Show("Please Select an Invoice!");
                return;
            }

            try
            {
                Decimal received = Convert.ToDecimal(txtRecieved.Text);
                Decimal paying = Convert.ToDecimal(txtPaying.Text);
                var creditRecord = (from creditor in db.tblCreditors
                                    where creditor.InvoiceID == selectedInvoice && creditor.CustomerID == this.selectedCustomer
                                    group creditor by creditor.InvoiceID into g
                                    select new
                                    {
                                        Invoice = (int)g.Key,
                                        Credit = (decimal)(g.Sum(t => t.Credit) - g.Sum(t => t.Debt))
                                    }).First();

                if(paying>received){
                    MessageBox.Show("Amount Paying Cannot Be Greater Than Amount Received");
                    return;
                }
                if (paying > received)
                {
                    MessageBox.Show("Amount Paying Cannot Be Greater Than Amount Received");
                    return;
                }
                if(paying > creditRecord.Credit)
                {
                    MessageBox.Show("Amount Paying Cannot Be Greater Than Credit Amount");
                    return;
                }

                var newCreditRecord = new tblCreditor() { 
                    CustomerID = selectedCustomer,
                    Credit = 0,
                    Debt = paying,
                    AmountRecieved = received,
                    Date =  DateTime.Now,
                    InvoiceID = creditRecord.Invoice,
                    Title = "Credit Payment Received for invoice : " + creditRecord.Invoice
                };
                db.tblCreditors.AddObject(newCreditRecord);

                var newCashbookRecord = new tblCashbook()
                {
                    Credit = paying,
                    Debt = 0,
                    Title = "Credit Payment Received for invoice : " + creditRecord.Invoice,
                    InvoiceID = creditRecord.Invoice,
                    Date = DateTime.Now
                };
                db.tblCashbooks.AddObject(newCashbookRecord);


                try
                {
                    db.SaveChanges();
                    MessageBox.Show("Successfully Saved!");
                    resetForm();
                    calculateBalance();
                    loadGrid();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Cannot Save Data!");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Invalid Amount Entered!");
            }
        }


        private void txtPaying_TextChanged(object sender, EventArgs e)
        {
            calculateBalance();
        }

        private void txtRecieved_TextChanged(object sender, EventArgs e)
        {
            calculateBalance();
        }

        private void resetForm()
        {
            //this.selectedCustomer = -1;//commented. so that the grid will stay loaded for that customer
            this.selectedInvoice = -1;
            //txtName.Text = ""; //commented. so that customer info will be displayed after updating a record
            //txtNIC.Text = ""; //commented. so that customer info will be displayed after updating a record
            //txtContactNumber.Text = ""; //commented. so that customer info will be displayed after updating a record
            txtCredit.Text = "";
            txtRecieved.Text = "";
            txtPaying.Text = "";
            txtBalance.Text = "";
        }
    }
}
