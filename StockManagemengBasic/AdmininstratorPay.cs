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
    public partial class AdmininstratorPay : UserControl
    {
        private StockmanagementEntities db = new StockmanagementEntities();

        public AdmininstratorPay()
        {
            InitializeComponent();

            RefreshAdminPayGrid();
        }

        void RefreshAdminPayGrid()
        {
            dgAdminPay.DataSource = db.tblCashbooks.Where(t => t.IsAdministratoryPay == true).ToList();
        }

        private void btnGetMoney_Click(object sender, EventArgs e)
        {
            decimal amount = 0;
            var reason = txtReason.Text;
            var comment = txtComment.Text;

            try
            {
                amount = Convert.ToDecimal(txtAmount.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }


            var newCashbook = new tblCashbook()
            {
                Title = reason,
                Comment = comment,
                Debt = amount,
                Date = DateTime.Now,
                IsAdministratoryPay = true,
            };

            db.tblCashbooks.AddObject(newCashbook);

            try
            {
                db.SaveChanges();
                MessageBox.Show("Success", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                RefreshAdminPayGrid();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }
    }
}
