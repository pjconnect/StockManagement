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

        public delegate void SelectStockHandler(int stockID);
        public event SelectStockHandler SelectStock = delegate { };


        public SearchStock()
        {
            InitializeComponent();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            
            SelectStock(0);
        }


        void RefreshGrid()
        {
            dgStock.DataSource = db.tblStocks.ToList();
        }

        private void SearchStock_Load(object sender, EventArgs e)
        {
            RefreshGrid();
        }
    }
}
