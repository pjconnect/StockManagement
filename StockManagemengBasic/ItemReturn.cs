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
    public partial class ItemReturn : UserControl
    {
        StockmanagementEntities db = new StockmanagementEntities();
        private int selectedInvoiceItemID;

        public ItemReturn()
        {
            InitializeComponent();

            RefreshDgItems();
        }

        void RefreshDgItems()
        {
            dgInvoiceItems.DataSource = db.tblInvoiceItems.Select(t => new { t.ID, t.InvoiceID, t.StockID, t.Qty, t.ReturnedQty }).ToList();
        }

        private void dgInvoiceItems_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgInvoiceItems.SelectedRows.Count > 0)
            {
                selectedInvoiceItemID = Convert.ToInt32(dgInvoiceItems.SelectedRows[0].Cells["ID"].Value);
                var selectedInvoice = db.tblInvoiceItems.Where(t => t.ID == selectedInvoiceItemID).First();
                txtReturnedQty.Text = selectedInvoice.ReturnedQty.ToString();
                txtReturnedReason.Text = selectedInvoice.ReturnReason;
            }
        }

        private void btnReturn_Click(object sender, EventArgs e)
        {
            try
            {
                var qty = Convert.ToDecimal(txtReturnedQty.Text);
                var reason = txtReturnedReason.Text;

                var selectedInvoice = db.tblInvoiceItems.Where(t => t.ID == selectedInvoiceItemID).First();
                if (selectedInvoice.Qty < qty)
                {
                    MessageBox.Show("Returned Qty Must be less than or equal to purchased qty");
                    return;
                }

                selectedInvoice.ReturnedQty = qty;
                selectedInvoice.ReturnReason = reason;

                db.SaveChanges();

                MessageBox.Show("Saved Success");


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }
    }
}
