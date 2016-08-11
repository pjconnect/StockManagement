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
    public partial class SupplierSearch : Form
    {

        public delegate void SupplierSelectHandler(int SupplierID);

        public event SupplierSelectHandler SupplierSelect = delegate { };

        public SupplierSearch()
        {
            InitializeComponent();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            var selectedRow = dgSuppliers.SelectedRows;

            SupplierSelect(0);
        }

        private void dgSuppliers_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            SupplierSelect(0);
        }
    }
}
