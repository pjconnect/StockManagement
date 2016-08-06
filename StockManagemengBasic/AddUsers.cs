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
    public partial class AddUsers : Form
    {
        public AddUsers()
        {
            InitializeComponent();
            cmbUserLevel.Items.Add("Admin");
            cmbUserLevel.Items.Add("User");
        }
    }
}
