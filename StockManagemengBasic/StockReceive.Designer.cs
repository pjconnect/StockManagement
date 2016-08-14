namespace StockManagemengBasic
{
    partial class StockReceive
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgStock = new System.Windows.Forms.DataGridView();
            this.Supplier = new System.Windows.Forms.GroupBox();
            this.txtspName = new System.Windows.Forms.TextBox();
            this.txtspContact = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnSearchSupplier = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnPrint = new System.Windows.Forms.Button();
            this.pbBarcode = new System.Windows.Forms.PictureBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtSelectedItemName = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtSelectedStockID = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.dtpStockRecieveDate = new System.Windows.Forms.DateTimePicker();
            this.txtInvoiceNumber = new System.Windows.Forms.TextBox();
            this.checkBuyForCredit = new System.Windows.Forms.CheckBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtSellPrice = new System.Windows.Forms.TextBox();
            this.txtPurchasedPrice = new System.Windows.Forms.TextBox();
            this.txtQty = new System.Windows.Forms.TextBox();
            this.btnInsert = new System.Windows.Forms.Button();
            this.dgStockItems = new System.Windows.Forms.DataGridView();
            this.txtStockItemID = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgStock)).BeginInit();
            this.Supplier.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbBarcode)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgStockItems)).BeginInit();
            this.SuspendLayout();
            // 
            // dgStock
            // 
            this.dgStock.AllowUserToAddRows = false;
            this.dgStock.AllowUserToDeleteRows = false;
            this.dgStock.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgStock.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgStock.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgStock.Location = new System.Drawing.Point(524, 0);
            this.dgStock.MultiSelect = false;
            this.dgStock.Name = "dgStock";
            this.dgStock.ReadOnly = true;
            this.dgStock.RowHeadersVisible = false;
            this.dgStock.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgStock.Size = new System.Drawing.Size(395, 240);
            this.dgStock.TabIndex = 8;
            this.dgStock.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgStock_CellClick);
            // 
            // Supplier
            // 
            this.Supplier.Controls.Add(this.txtspName);
            this.Supplier.Controls.Add(this.txtspContact);
            this.Supplier.Controls.Add(this.label7);
            this.Supplier.Controls.Add(this.label6);
            this.Supplier.Controls.Add(this.btnSearchSupplier);
            this.Supplier.Location = new System.Drawing.Point(5, 3);
            this.Supplier.Name = "Supplier";
            this.Supplier.Size = new System.Drawing.Size(239, 106);
            this.Supplier.TabIndex = 23;
            this.Supplier.TabStop = false;
            this.Supplier.Text = "Supplier";
            // 
            // txtspName
            // 
            this.txtspName.Location = new System.Drawing.Point(72, 42);
            this.txtspName.Name = "txtspName";
            this.txtspName.ReadOnly = true;
            this.txtspName.Size = new System.Drawing.Size(161, 20);
            this.txtspName.TabIndex = 20;
            // 
            // txtspContact
            // 
            this.txtspContact.Location = new System.Drawing.Point(72, 68);
            this.txtspContact.Name = "txtspContact";
            this.txtspContact.ReadOnly = true;
            this.txtspContact.Size = new System.Drawing.Size(161, 20);
            this.txtspContact.TabIndex = 21;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 71);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(44, 13);
            this.label7.TabIndex = 2;
            this.label7.Text = "Contact";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 45);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(35, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "Name";
            // 
            // btnSearchSupplier
            // 
            this.btnSearchSupplier.Location = new System.Drawing.Point(72, 13);
            this.btnSearchSupplier.Name = "btnSearchSupplier";
            this.btnSearchSupplier.Size = new System.Drawing.Size(97, 23);
            this.btnSearchSupplier.TabIndex = 0;
            this.btnSearchSupplier.Text = "Select Supplier";
            this.btnSearchSupplier.UseVisualStyleBackColor = true;
            this.btnSearchSupplier.Click += new System.EventHandler(this.btnSearchSupplier_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnPrint);
            this.groupBox1.Controls.Add(this.pbBarcode);
            this.groupBox1.Location = new System.Drawing.Point(250, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(268, 181);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Barcode";
            // 
            // btnPrint
            // 
            this.btnPrint.Location = new System.Drawing.Point(181, 125);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 31;
            this.btnPrint.Text = "Print";
            this.btnPrint.UseVisualStyleBackColor = true;
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // pbBarcode
            // 
            this.pbBarcode.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.pbBarcode.Location = new System.Drawing.Point(6, 19);
            this.pbBarcode.Name = "pbBarcode";
            this.pbBarcode.Size = new System.Drawing.Size(250, 100);
            this.pbBarcode.TabIndex = 30;
            this.pbBarcode.TabStop = false;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtSelectedItemName);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.txtSelectedStockID);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Location = new System.Drawing.Point(5, 115);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(239, 69);
            this.groupBox2.TabIndex = 30;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Selected Item";
            // 
            // txtSelectedItemName
            // 
            this.txtSelectedItemName.Location = new System.Drawing.Point(72, 43);
            this.txtSelectedItemName.Name = "txtSelectedItemName";
            this.txtSelectedItemName.ReadOnly = true;
            this.txtSelectedItemName.Size = new System.Drawing.Size(163, 20);
            this.txtSelectedItemName.TabIndex = 23;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(8, 46);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(58, 13);
            this.label9.TabIndex = 22;
            this.label9.Text = "Item Name";
            // 
            // txtSelectedStockID
            // 
            this.txtSelectedStockID.Location = new System.Drawing.Point(72, 20);
            this.txtSelectedStockID.Name = "txtSelectedStockID";
            this.txtSelectedStockID.ReadOnly = true;
            this.txtSelectedStockID.Size = new System.Drawing.Size(163, 20);
            this.txtSelectedStockID.TabIndex = 23;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(8, 23);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(41, 13);
            this.label8.TabIndex = 22;
            this.label8.Text = "Item ID";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Controls.Add(this.dtpStockRecieveDate);
            this.groupBox3.Controls.Add(this.txtInvoiceNumber);
            this.groupBox3.Controls.Add(this.checkBuyForCredit);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.label10);
            this.groupBox3.Controls.Add(this.label1);
            this.groupBox3.Controls.Add(this.txtSellPrice);
            this.groupBox3.Controls.Add(this.txtPurchasedPrice);
            this.groupBox3.Controls.Add(this.txtStockItemID);
            this.groupBox3.Controls.Add(this.txtQty);
            this.groupBox3.Controls.Add(this.btnInsert);
            this.groupBox3.Location = new System.Drawing.Point(11, 190);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(233, 256);
            this.groupBox3.TabIndex = 31;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Add Stock";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 164);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(104, 13);
            this.label5.TabIndex = 40;
            this.label5.Text = "Stock Recieve Date";
            // 
            // dtpStockRecieveDate
            // 
            this.dtpStockRecieveDate.Location = new System.Drawing.Point(6, 180);
            this.dtpStockRecieveDate.Name = "dtpStockRecieveDate";
            this.dtpStockRecieveDate.Size = new System.Drawing.Size(221, 20);
            this.dtpStockRecieveDate.TabIndex = 33;
            // 
            // txtInvoiceNumber
            // 
            this.txtInvoiceNumber.Location = new System.Drawing.Point(117, 134);
            this.txtInvoiceNumber.Name = "txtInvoiceNumber";
            this.txtInvoiceNumber.Size = new System.Drawing.Size(110, 20);
            this.txtInvoiceNumber.TabIndex = 29;
            // 
            // checkBuyForCredit
            // 
            this.checkBuyForCredit.AutoSize = true;
            this.checkBuyForCredit.Location = new System.Drawing.Point(138, 206);
            this.checkBuyForCredit.Name = "checkBuyForCredit";
            this.checkBuyForCredit.Size = new System.Drawing.Size(89, 17);
            this.checkBuyForCredit.TabIndex = 34;
            this.checkBuyForCredit.Text = "Buy for Credit";
            this.checkBuyForCredit.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(56, 111);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 13);
            this.label3.TabIndex = 36;
            this.label3.Text = "Sell Price";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 85);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 13);
            this.label2.TabIndex = 37;
            this.label2.Text = "Purchased Price";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 137);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 13);
            this.label4.TabIndex = 38;
            this.label4.Text = "Ref. Invoice Number";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(83, 60);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(23, 13);
            this.label1.TabIndex = 39;
            this.label1.Text = "Qty";
            // 
            // txtSellPrice
            // 
            this.txtSellPrice.Location = new System.Drawing.Point(117, 108);
            this.txtSellPrice.Name = "txtSellPrice";
            this.txtSellPrice.Size = new System.Drawing.Size(110, 20);
            this.txtSellPrice.TabIndex = 32;
            // 
            // txtPurchasedPrice
            // 
            this.txtPurchasedPrice.Location = new System.Drawing.Point(117, 82);
            this.txtPurchasedPrice.Name = "txtPurchasedPrice";
            this.txtPurchasedPrice.Size = new System.Drawing.Size(110, 20);
            this.txtPurchasedPrice.TabIndex = 31;
            // 
            // txtQty
            // 
            this.txtQty.Location = new System.Drawing.Point(117, 56);
            this.txtQty.Name = "txtQty";
            this.txtQty.Size = new System.Drawing.Size(110, 20);
            this.txtQty.TabIndex = 30;
            // 
            // btnInsert
            // 
            this.btnInsert.Location = new System.Drawing.Point(127, 229);
            this.btnInsert.Name = "btnInsert";
            this.btnInsert.Size = new System.Drawing.Size(100, 23);
            this.btnInsert.TabIndex = 35;
            this.btnInsert.Text = "Update Stock";
            this.btnInsert.UseVisualStyleBackColor = true;
            this.btnInsert.Click += new System.EventHandler(this.btnInsert_Click);
            // 
            // dgStockItems
            // 
            this.dgStockItems.AllowUserToAddRows = false;
            this.dgStockItems.AllowUserToDeleteRows = false;
            this.dgStockItems.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgStockItems.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgStockItems.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgStockItems.Location = new System.Drawing.Point(524, 246);
            this.dgStockItems.MultiSelect = false;
            this.dgStockItems.Name = "dgStockItems";
            this.dgStockItems.ReadOnly = true;
            this.dgStockItems.RowHeadersVisible = false;
            this.dgStockItems.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgStockItems.Size = new System.Drawing.Size(395, 200);
            this.dgStockItems.TabIndex = 8;
            this.dgStockItems.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgStockItems_CellClick);
            // 
            // txtStockItemID
            // 
            this.txtStockItemID.Enabled = false;
            this.txtStockItemID.Location = new System.Drawing.Point(117, 30);
            this.txtStockItemID.Name = "txtStockItemID";
            this.txtStockItemID.Size = new System.Drawing.Size(110, 20);
            this.txtStockItemID.TabIndex = 30;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(39, 33);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(72, 13);
            this.label10.TabIndex = 39;
            this.label10.Text = "Stock Item ID";
            // 
            // StockReceive
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.Supplier);
            this.Controls.Add(this.dgStockItems);
            this.Controls.Add(this.dgStock);
            this.Name = "StockReceive";
            this.Size = new System.Drawing.Size(954, 486);
            this.Load += new System.EventHandler(this.StockReceive_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgStock)).EndInit();
            this.Supplier.ResumeLayout(false);
            this.Supplier.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pbBarcode)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgStockItems)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgStock;
        private System.Windows.Forms.GroupBox Supplier;
        private System.Windows.Forms.Button btnSearchSupplier;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtspName;
        private System.Windows.Forms.TextBox txtspContact;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.PictureBox pbBarcode;
        private System.Windows.Forms.Button btnPrint;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtSelectedStockID;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtSelectedItemName;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DateTimePicker dtpStockRecieveDate;
        private System.Windows.Forms.TextBox txtInvoiceNumber;
        private System.Windows.Forms.CheckBox checkBuyForCredit;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtSellPrice;
        private System.Windows.Forms.TextBox txtPurchasedPrice;
        private System.Windows.Forms.TextBox txtQty;
        private System.Windows.Forms.Button btnInsert;
        private System.Windows.Forms.DataGridView dgStockItems;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtStockItemID;
    }
}
