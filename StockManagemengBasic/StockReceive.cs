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
    public partial class StockReceive : UserControl
    {
        public StockReceive()
        {
            InitializeComponent();
        }

        private void btnSearchSupplier_Click(object sender, EventArgs e)
        {
            var supplierSearch =  new SupplierSearch();
            supplierSearch.Show();
            supplierSearch.SupplierSelect += SupplierSearch_SupplierSelect;
        }

        private void SupplierSearch_SupplierSelect(int SupplierID)
        {
            MessageBox.Show(SupplierID.ToString());
        }
    }
}
