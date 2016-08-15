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
    public partial class Cashbook : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public Cashbook()
        {
            InitializeComponent();

            dgCashbook.DataSource = from invoice in db.tblInvoices
                                    join invoiceItems in db.tblInvoiceItems on invoice.ID equals invoiceItems.InvoiceID
                                    join stockitems in db.tblStockItems on invoiceItems.StockItemID equals stockitems.ID
                                    join stock in db.tblStocks on invoiceItems.StockID equals stock.ID
                                    where invoice.IsPaid == true
                                    select new { invoice.ID , stock.ItemName, stockitems.PurchasePrice, invoiceItems.SoldPrice,  };

        }
    }
}
