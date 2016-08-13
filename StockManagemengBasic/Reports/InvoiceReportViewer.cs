using Microsoft.Reporting.WinForms;
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
    public partial class InvoiceReportViewer : Form
    {

        ReportDataset dt = new ReportDataset();
        private int invoiceID;

        public InvoiceReportViewer(int invoiceID)
        {
            InitializeComponent();

            this.invoiceID = invoiceID;
        }

        private void InvoiceReportViewer_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'ReportDataset.tblStockReport' table. You can move, or remove it, as needed.
            this.tblStockReportTableAdapter.Fill(this.ReportDataset.tblStockReport);

            this.reportViewer1.RefreshReport();
            //this.reportViewer1.RefreshReport();
        }

        private void reportViewer_Load(object sender, EventArgs e)
        {

        }
    }
}
