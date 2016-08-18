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
    public partial class DebtorPay : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public DebtorPay()
        {
            InitializeComponent();

            RefreshGrid();
        }

        void RefreshGrid()
        {
            dgDebtors.DataSource = db.tblDebtors.ToList();
        }

        private void dgDebtors_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if(dgDebtors.SelectedRows.Count > 0)
            {
                var id = Convert.ToInt32(dgDebtors.SelectedRows[0].Cells["ID"].Value); ;
                FillTextboxes(id);

            }
        }

        void FillTextboxes(int DebtorID)
        {

            var selectedDebtor = db.tblDebtors.Where(t => t.ID == DebtorID).First();
            var totalDebot = db.tblDebtors.Where(t => t.RefInvoiceNumber == selectedDebtor.RefInvoiceNumber).Select(t => t.Credit).Sum();
            var totalPay = db.tblDebtors.Where(t => t.RefInvoiceNumber == selectedDebtor.RefInvoiceNumber).Select(t => t.Debt).Sum();

            txtCredit.Text = totalDebot.ToString();
            txtPaying.Text = totalDebot.ToString();

        }
    }
}
