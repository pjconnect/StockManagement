using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StockManagemengBasic
{
    public partial class SupplierIn : UserControl
    {

         StockmanagementEntities db = new  StockmanagementEntities();

        public SupplierIn()
        {
            InitializeComponent();
        }

        private void btnEnter_Click(object sender, EventArgs e)
        {
            var itemid = txtItemID.Text;

            var item = db.tblStocks.Where(t => t.ID == itemid).Select(t => t).ToList();

            dgItem.DataSource = item; 
        }
    }
}
