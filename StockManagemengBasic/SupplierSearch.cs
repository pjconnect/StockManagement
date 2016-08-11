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
        StockmanagementEntities db = new StockmanagementEntities();

        public delegate void SupplierSelectHandler(int SupplierID);

        public event SupplierSelectHandler SupplierSelect = delegate { };

        public SupplierSearch()
        {
            InitializeComponent();
            loadGrid();
        }

        //dodo supplier search
        

        private void btnSelect_Click(object sender, EventArgs e)
        {
            var id = Convert.ToInt32(dgSuppliers.SelectedRows[0].Cells["ID"].Value);

            SupplierSelect(id);
        }

        private void dgSuppliers_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if(e.RowIndex == -1)
            {
                return;
            }
            var id = Convert.ToInt32(dgSuppliers.SelectedRows[0].Cells["ID"].Value);
            SupplierSelect(id);
        }

        private void loadGrid() {
            dgSuppliers.DataSource = db.tblSuppliers.ToList();
        }
    }
}
