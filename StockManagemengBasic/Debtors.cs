﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace StockManagemengBasic
{
    public partial class Debtors : UserControl
    {

        StockmanagementEntities db = new StockmanagementEntities();

        public Debtors()
        {
            InitializeComponent();

            dgDebtors.DataSource = db.tblDebtors.ToList();
        }
    }
}
