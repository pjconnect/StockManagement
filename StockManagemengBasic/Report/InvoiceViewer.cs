using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace StockManagemengBasic.Reports
{

    public partial class InvoiceViewer : Form
    {

        StockmanagementEntities db = new StockmanagementEntities();

        int invoiceNumber = 0;

        public InvoiceViewer(int invoiceNumber)
        {
            InitializeComponent();

            this.invoiceNumber = invoiceNumber;
        }

        private void InvoiceViewer_Load(object sender, EventArgs e)
        {
            SPInvoiceReport_ResultBindingSource.DataSource = db.SPInvoiceReport(invoiceNumber);

            this.reportViewer1.RefreshReport();
        }
    }
}
