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
            SelectStockItem();
        }

        void SelectStockItem()
        {
            try
            {
                var stockID = dgStockItems.SelectedRows[0].Cells["ID"].Value.ToString();
                SelectStock(stockID);
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("No Items Added!");
            }

        }

        void RefreshStockItemGrid(string stockID = "")
        {
            if(stockID == string.Empty)
            {
                dgStockItems.DataSource = db.tblStockItems.ToList();
            }
            else
            {
                dgStockItems.DataSource = db.tblStockItems.Where(t => t.StockID == stockID).ToList();
            }
        }

        void RefreshStockGrid()
        {
            dgStock.DataSource = db.tblStocks.ToList();
        }

        private void SearchStock_Load(object sender, EventArgs e)
        {
            RefreshStockGrid();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            var searchText = txtSearch.Text;
        }

        private void dgStock_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            SelectStockItem();
        }

        private void dgStock_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgStock.RowCount > 0) {
                var selectedStockID = dgStock.SelectedRows[0].Cells["ID"].Value.ToString();

                RefreshStockItemGrid(selectedStockID);
            }
        }
    }
}
