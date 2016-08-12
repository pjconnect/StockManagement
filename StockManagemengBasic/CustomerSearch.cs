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
    public partial class CustomerSearch : Form
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public delegate void CustomerSelectHandler(int CustomerID);
        public event CustomerSelectHandler CustomerSelect = delegate { };

        public CustomerSearch()
        {
            InitializeComponent();
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            var id = Convert.ToInt32(dgCustomer.SelectedRows[0].Cells["ID"].Value);
            CustomerSelect(id);
            this.Close();
        }

        private void CustomerSearch_Load(object sender, EventArgs e)
        {
            dgCustomer.DataSource = db.tblCustomers.ToList();
        }


    }
}
