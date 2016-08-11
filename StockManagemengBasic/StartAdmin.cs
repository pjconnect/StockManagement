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
    public partial class StartAdmin : Form
    {
        public StartAdmin()
        {
            InitializeComponent();
        }

        private void StartAdmin_Load(object sender, EventArgs e)
        {

        }

        private void invoiceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new AddInvoice());
        }

        private void ClearLoader()
        {
            loader.Controls.Clear();
        }

        private void addStockToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new AddStock());
        }

        private void stockreceiveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new StockReceive());
        }

        private void suppliersToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new SupplierIn());
        }

        private void manageUsersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new Login());
        }

        private void changeMyPasswordToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new ChangeMyPassword());
        }

        private void creditorsToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new Creditors());
        }

        private void debtorsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new Debtors());
        }

        private void bankToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new Bank());
        }

        private void cashbookToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new Cashbook());
        }

        private void administratorPayToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new AdmininstratorPay());
        }

        private void itemReturnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ClearLoader();
            loader.Controls.Add(new ItemReturn());
        }
    }
}
