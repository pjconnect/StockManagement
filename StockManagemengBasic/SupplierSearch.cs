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

        public delegate void SupplierSelect(int SupplierID);

        public event SupplierSelect SupplierSelectHandler;

        public SupplierSearch()
        {
            InitializeComponent();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            var selectedRow = dgSuppliers.SelectedRows;

            SupplierSelectHandler(0);
        }
    }
}
