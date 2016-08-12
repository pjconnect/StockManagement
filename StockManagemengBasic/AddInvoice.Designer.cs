namespace StockManagemengBasic
{
    partial class AddInvoice
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtItemID = new System.Windows.Forms.TextBox();
            this.btnAddItem = new System.Windows.Forms.Button();
            this.dgCart = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblTotalCredit = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtCredit = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCash = new System.Windows.Forms.TextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.dtpRealiseDate = new System.Windows.Forms.DateTimePicker();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtChequeNumber = new System.Windows.Forms.TextBox();
            this.txtCheque = new System.Windows.Forms.TextBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.txtTotal = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnPay = new System.Windows.Forms.Button();
            this.txtBalance = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtQty = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.txtCustomerName = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.btnNewCustomer = new System.Windows.Forms.Button();
            this.btnSearchCustomer = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.txtDiscount = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.cmbDiscountType = new System.Windows.Forms.ComboBox();
            this.label16 = new System.Windows.Forms.Label();
            this.txtContactNumber = new System.Windows.Forms.TextBox();
            this.RS = new System.Windows.Forms.Label();
            this.lblTotalAmountDescription = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgCart)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtItemID
            // 
            this.txtItemID.Location = new System.Drawing.Point(57, 13);
            this.txtItemID.Name = "txtItemID";
            this.txtItemID.Size = new System.Drawing.Size(170, 20);
            this.txtItemID.TabIndex = 0;
            // 
            // btnAddItem
            // 
            this.btnAddItem.Location = new System.Drawing.Point(350, 10);
            this.btnAddItem.Name = "btnAddItem";
            this.btnAddItem.Size = new System.Drawing.Size(75, 23);
            this.btnAddItem.TabIndex = 1;
            this.btnAddItem.Text = "Add";
            this.btnAddItem.UseVisualStyleBackColor = true;
            this.btnAddItem.Click += new System.EventHandler(this.btnAddItem_Click);
            // 
            // dgCart
            // 
            this.dgCart.AllowUserToAddRows = false;
            this.dgCart.AllowUserToDeleteRows = false;
            this.dgCart.AllowUserToOrderColumns = true;
            this.dgCart.AllowUserToResizeColumns = false;
            this.dgCart.AllowUserToResizeRows = false;
            this.dgCart.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgCart.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllHeaders;
            this.dgCart.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgCart.Location = new System.Drawing.Point(13, 52);
            this.dgCart.MultiSelect = false;
            this.dgCart.Name = "dgCart";
            this.dgCart.ReadOnly = true;
            this.dgCart.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgCart.Size = new System.Drawing.Size(767, 216);
            this.dgCart.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(26, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Cart";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.RS);
            this.groupBox1.Controls.Add(this.lblTotalCredit);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtCredit);
            this.groupBox1.Location = new System.Drawing.Point(273, 360);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(254, 99);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Pay by Credit";
            // 
            // lblTotalCredit
            // 
            this.lblTotalCredit.AutoSize = true;
            this.lblTotalCredit.Location = new System.Drawing.Point(172, 54);
            this.lblTotalCredit.Name = "lblTotalCredit";
            this.lblTotalCredit.Size = new System.Drawing.Size(28, 13);
            this.lblTotalCredit.TabIndex = 7;
            this.lblTotalCredit.Text = "0.00";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(7, 54);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(61, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Total Credit";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(7, 21);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(43, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Amount";
            // 
            // txtCredit
            // 
            this.txtCredit.Location = new System.Drawing.Point(56, 18);
            this.txtCredit.Name = "txtCredit";
            this.txtCredit.Size = new System.Drawing.Size(176, 20);
            this.txtCredit.TabIndex = 0;
            this.txtCredit.TextChanged += new System.EventHandler(this.txtCredit_TextChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txtCash);
            this.groupBox2.Location = new System.Drawing.Point(273, 283);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(254, 71);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Pay by Cash";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(7, 31);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(43, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Amount";
            // 
            // txtCash
            // 
            this.txtCash.Location = new System.Drawing.Point(56, 28);
            this.txtCash.Name = "txtCash";
            this.txtCash.Size = new System.Drawing.Size(177, 20);
            this.txtCash.TabIndex = 0;
            this.txtCash.TextChanged += new System.EventHandler(this.txtCash_TextChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.dtpRealiseDate);
            this.groupBox3.Controls.Add(this.label9);
            this.groupBox3.Controls.Add(this.label8);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Controls.Add(this.txtChequeNumber);
            this.groupBox3.Controls.Add(this.txtCheque);
            this.groupBox3.Location = new System.Drawing.Point(535, 283);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(254, 176);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Pay by Cheque";
            // 
            // dtpRealiseDate
            // 
            this.dtpRealiseDate.Location = new System.Drawing.Point(17, 88);
            this.dtpRealiseDate.Name = "dtpRealiseDate";
            this.dtpRealiseDate.Size = new System.Drawing.Size(228, 20);
            this.dtpRealiseDate.TabIndex = 5;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(17, 72);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(74, 13);
            this.label9.TabIndex = 4;
            this.label9.Text = "Realised Date";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(17, 50);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(43, 13);
            this.label8.TabIndex = 3;
            this.label8.Text = "Amount";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(17, 27);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(84, 13);
            this.label7.TabIndex = 2;
            this.label7.Text = "Cheque Number";
            // 
            // txtChequeNumber
            // 
            this.txtChequeNumber.Location = new System.Drawing.Point(107, 24);
            this.txtChequeNumber.Name = "txtChequeNumber";
            this.txtChequeNumber.Size = new System.Drawing.Size(138, 20);
            this.txtChequeNumber.TabIndex = 1;
            // 
            // txtCheque
            // 
            this.txtCheque.Location = new System.Drawing.Point(107, 50);
            this.txtCheque.Name = "txtCheque";
            this.txtCheque.Size = new System.Drawing.Size(138, 20);
            this.txtCheque.TabIndex = 0;
            this.txtCheque.TextChanged += new System.EventHandler(this.txtCheque_TextChanged);
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(431, 9);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(75, 23);
            this.btnSearch.TabIndex = 7;
            this.btnSearch.Text = "Search Item";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // txtTotal
            // 
            this.txtTotal.Location = new System.Drawing.Point(448, 467);
            this.txtTotal.Name = "txtTotal";
            this.txtTotal.ReadOnly = true;
            this.txtTotal.Size = new System.Drawing.Size(100, 20);
            this.txtTotal.TabIndex = 8;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(372, 470);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Total Amount";
            // 
            // btnPay
            // 
            this.btnPay.Location = new System.Drawing.Point(714, 465);
            this.btnPay.Name = "btnPay";
            this.btnPay.Size = new System.Drawing.Size(75, 23);
            this.btnPay.TabIndex = 2;
            this.btnPay.Text = "Pay";
            this.btnPay.UseVisualStyleBackColor = true;
            this.btnPay.Click += new System.EventHandler(this.btnPay_Click);
            // 
            // txtBalance
            // 
            this.txtBalance.Location = new System.Drawing.Point(607, 467);
            this.txtBalance.Name = "txtBalance";
            this.txtBalance.ReadOnly = true;
            this.txtBalance.Size = new System.Drawing.Size(100, 20);
            this.txtBalance.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(555, 470);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(46, 13);
            this.label5.TabIndex = 11;
            this.label5.Text = "Balance";
            // 
            // txtQty
            // 
            this.txtQty.Location = new System.Drawing.Point(262, 12);
            this.txtQty.Name = "txtQty";
            this.txtQty.Size = new System.Drawing.Size(78, 20);
            this.txtQty.TabIndex = 12;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(10, 16);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(41, 13);
            this.label10.TabIndex = 3;
            this.label10.Text = "Item ID";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(233, 15);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(23, 13);
            this.label11.TabIndex = 13;
            this.label11.Text = "Qty";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.txtContactNumber);
            this.groupBox4.Controls.Add(this.label16);
            this.groupBox4.Controls.Add(this.txtCustomerName);
            this.groupBox4.Controls.Add(this.label15);
            this.groupBox4.Controls.Add(this.btnNewCustomer);
            this.groupBox4.Controls.Add(this.btnSearchCustomer);
            this.groupBox4.Controls.Add(this.label13);
            this.groupBox4.Location = new System.Drawing.Point(13, 287);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(254, 172);
            this.groupBox4.TabIndex = 14;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Save Customer";
            // 
            // txtCustomerName
            // 
            this.txtCustomerName.Enabled = false;
            this.txtCustomerName.Location = new System.Drawing.Point(97, 51);
            this.txtCustomerName.Name = "txtCustomerName";
            this.txtCustomerName.ReadOnly = true;
            this.txtCustomerName.Size = new System.Drawing.Size(142, 20);
            this.txtCustomerName.TabIndex = 14;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(6, 54);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(85, 13);
            this.label15.TabIndex = 12;
            this.label15.Text = "Customer Name:";
            // 
            // btnNewCustomer
            // 
            this.btnNewCustomer.Location = new System.Drawing.Point(164, 24);
            this.btnNewCustomer.Name = "btnNewCustomer";
            this.btnNewCustomer.Size = new System.Drawing.Size(75, 23);
            this.btnNewCustomer.TabIndex = 10;
            this.btnNewCustomer.Text = "New";
            this.btnNewCustomer.UseVisualStyleBackColor = true;
            this.btnNewCustomer.Click += new System.EventHandler(this.btnNewCustomer_Click);
            // 
            // btnSearchCustomer
            // 
            this.btnSearchCustomer.Location = new System.Drawing.Point(83, 24);
            this.btnSearchCustomer.Name = "btnSearchCustomer";
            this.btnSearchCustomer.Size = new System.Drawing.Size(75, 23);
            this.btnSearchCustomer.TabIndex = 10;
            this.btnSearchCustomer.Text = "Search";
            this.btnSearchCustomer.UseVisualStyleBackColor = true;
            this.btnSearchCustomer.Click += new System.EventHandler(this.btnSearchCustomer_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(6, 29);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(51, 13);
            this.label13.TabIndex = 9;
            this.label13.Text = "Customer";
            // 
            // txtDiscount
            // 
            this.txtDiscount.Location = new System.Drawing.Point(192, 465);
            this.txtDiscount.Name = "txtDiscount";
            this.txtDiscount.Size = new System.Drawing.Size(100, 20);
            this.txtDiscount.TabIndex = 15;
            this.txtDiscount.TextChanged += new System.EventHandler(this.txtDiscount_TextChanged);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(137, 468);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(49, 13);
            this.label12.TabIndex = 16;
            this.label12.Text = "Discount";
            // 
            // cmbDiscountType
            // 
            this.cmbDiscountType.FormattingEnabled = true;
            this.cmbDiscountType.Items.AddRange(new object[] {
            "%",
            "RS"});
            this.cmbDiscountType.Location = new System.Drawing.Point(298, 465);
            this.cmbDiscountType.Name = "cmbDiscountType";
            this.cmbDiscountType.Size = new System.Drawing.Size(52, 21);
            this.cmbDiscountType.TabIndex = 17;
            this.cmbDiscountType.SelectedIndexChanged += new System.EventHandler(this.cmbDiscountType_SelectedIndexChanged);
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(6, 80);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(87, 13);
            this.label16.TabIndex = 12;
            this.label16.Text = "Contact Number:";
            // 
            // txtContactNumber
            // 
            this.txtContactNumber.Enabled = false;
            this.txtContactNumber.Location = new System.Drawing.Point(97, 77);
            this.txtContactNumber.Name = "txtContactNumber";
            this.txtContactNumber.ReadOnly = true;
            this.txtContactNumber.Size = new System.Drawing.Size(142, 20);
            this.txtContactNumber.TabIndex = 14;
            // 
            // RS
            // 
            this.RS.AutoSize = true;
            this.RS.Location = new System.Drawing.Point(210, 54);
            this.RS.Name = "RS";
            this.RS.Size = new System.Drawing.Size(22, 13);
            this.RS.TabIndex = 8;
            this.RS.Text = "RS";
            // 
            // lblTotalAmountDescription
            // 
            this.lblTotalAmountDescription.AutoSize = true;
            this.lblTotalAmountDescription.Location = new System.Drawing.Point(445, 490);
            this.lblTotalAmountDescription.Name = "lblTotalAmountDescription";
            this.lblTotalAmountDescription.Size = new System.Drawing.Size(0, 13);
            this.lblTotalAmountDescription.TabIndex = 18;
            // 
            // AddInvoice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lblTotalAmountDescription);
            this.Controls.Add(this.cmbDiscountType);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.txtDiscount);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.txtQty);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtBalance);
            this.Controls.Add(this.btnPay);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtTotal);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgCart);
            this.Controls.Add(this.btnAddItem);
            this.Controls.Add(this.txtItemID);
            this.Name = "AddInvoice";
            this.Size = new System.Drawing.Size(798, 517);
            this.Load += new System.EventHandler(this.AddInvoice_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgCart)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtItemID;
        private System.Windows.Forms.Button btnAddItem;
        private System.Windows.Forms.DataGridView dgCart;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.TextBox txtTotal;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtCash;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnPay;
        private System.Windows.Forms.TextBox txtCredit;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtCheque;
        private System.Windows.Forms.TextBox txtBalance;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtQty;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtChequeNumber;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Button btnSearchCustomer;
        private System.Windows.Forms.Label lblTotalCredit;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox txtCustomerName;
        private System.Windows.Forms.DateTimePicker dtpRealiseDate;
        private System.Windows.Forms.Button btnNewCustomer;
        private System.Windows.Forms.TextBox txtDiscount;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cmbDiscountType;
        private System.Windows.Forms.TextBox txtContactNumber;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label RS;
        private System.Windows.Forms.Label lblTotalAmountDescription;
    }
}