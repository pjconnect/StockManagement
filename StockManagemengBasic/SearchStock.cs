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
    public partial class SearchStock : Form
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public delegate void SelectStockHandler(string stockID);
        public event SelectStockHandler SelectStock = delegate { };


        public SearchStock()
        {
            InitializeComponent();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            var stockID = dgStock.SelectedRows[0].Cells["ID"].Value.ToString();
            SelectStock(stockID);
            this.Hide();
        }

        void RefreshGrid()
        {
            dgStock.DataSource = db.tblStocks.ToList();
        }

        private void SearchStock_Load(object sender, EventArgs e)
        {
            RefreshGrid();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            var searchText = txtSearch.Text;
        }
    }
}
