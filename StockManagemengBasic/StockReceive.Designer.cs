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
            this.btnInsert = new System.Windows.Forms.Button();
            this.txtQty = new System.Windows.Forms.TextBox();
            this.Supplier = new System.Windows.Forms.GroupBox();
            this.txtspName = new System.Windows.Forms.TextBox();
            this.txtspContact = new System.Windows.Forms.TextBox();
            this.txtspEmail = new System.Windows.Forms.TextBox();
            this.txtspFax = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnSearchSupplier = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtPurchasedPrice = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtSellPrice = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.checkBuyForCredit = new System.Windows.Forms.CheckBox();
            this.txtInvoiceNumber = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.dtpStockRecieveDate = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txLotNumber = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtspNIC = new System.Windows.Forms.TextBox();
            this.pbBarcode = new System.Windows.Forms.PictureBox();
            this.btnPrint = new System.Windows.Forms.Button();
            this.btnNewStock = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgStock)).BeginInit();
            this.Supplier.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbBarcode)).BeginInit();
            this.SuspendLayout();
            // 
            // dgStock
            // 
            this.dgStock.AllowUserToAddRows = false;
            this.dgStock.AllowUserToDeleteRows = false;
            this.dgStock.AllowUserToResizeRows = false;
            this.dgStock.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgStock.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgStock.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgStock.Location = new System.Drawing.Point(524, 0);
            this.dgStock.MultiSelect = false;
            this.dgStock.Name = "dgStock";
            this.dgStock.ReadOnly = true;
            this.dgStock.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgStock.Size = new System.Drawing.Size(395, 502);
            this.dgStock.TabIndex = 8;
            // 
            // btnInsert
            // 
            this.btnInsert.Location = new System.Drawing.Point(118, 372);
            this.btnInsert.Name = "btnInsert";
            this.btnInsert.Size = new System.Drawing.Size(100, 23);
            this.btnInsert.TabIndex = 7;
            this.btnInsert.Text = "Update Stock";
            this.btnInsert.UseVisualStyleBackColor = true;
            this.btnInsert.Click += new System.EventHandler(this.btnInsert_Click);
            // 
            // txtQty
            // 
            this.txtQty.Location = new System.Drawing.Point(118, 216);
            this.txtQty.Name = "txtQty";
            this.txtQty.Size = new System.Drawing.Size(100, 20);
            this.txtQty.TabIndex = 2;
            // 
            // Supplier
            // 
            this.Supplier.Controls.Add(this.txtspName);
            this.Supplier.Controls.Add(this.txtspContact);
            this.Supplier.Controls.Add(this.txtspEmail);
            this.Supplier.Controls.Add(this.txtspNIC);
            this.Supplier.Controls.Add(this.txtspFax);
            this.Supplier.Controls.Add(this.label10);
            this.Supplier.Controls.Add(this.label9);
            this.Supplier.Controls.Add(this.label8);
            this.Supplier.Controls.Add(this.label7);
            this.Supplier.Controls.Add(this.label6);
            this.Supplier.Controls.Add(this.btnSearchSupplier);
            this.Supplier.Location = new System.Drawing.Point(5, 3);
            this.Supplier.Name = "Supplier";
            this.Supplier.Size = new System.Drawing.Size(239, 181);
            this.Supplier.TabIndex = 23;
            this.Supplier.TabStop = false;
            this.Supplier.Text = "Supplier";
            // 
            // txtspName
            // 
            this.txtspName.Location = new System.Drawing.Point(63, 42);
            this.txtspName.Name = "txtspName";
            this.txtspName.ReadOnly = true;
            this.txtspName.Size = new System.Drawing.Size(170, 20);
            this.txtspName.TabIndex = 20;
            // 
            // txtspContact
            // 
            this.txtspContact.Location = new System.Drawing.Point(63, 68);
            this.txtspContact.Name = "txtspContact";
            this.txtspContact.ReadOnly = true;
            this.txtspContact.Size = new System.Drawing.Size(170, 20);
            this.txtspContact.TabIndex = 21;
            // 
            // txtspEmail
            // 
            this.txtspEmail.Location = new System.Drawing.Point(63, 94);
            this.txtspEmail.Name = "txtspEmail";
            this.txtspEmail.ReadOnly = true;
            this.txtspEmail.Size = new System.Drawing.Size(170, 20);
            this.txtspEmail.TabIndex = 22;
            // 
            // txtspFax
            // 
            this.txtspFax.Location = new System.Drawing.Point(63, 146);
            this.txtspFax.Name = "txtspFax";
            this.txtspFax.ReadOnly = true;
            this.txtspFax.Size = new System.Drawing.Size(170, 20);
            this.txtspFax.TabIndex = 24;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 149);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(24, 13);
            this.label10.TabIndex = 5;
            this.label10.Text = "Fax";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 97);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(32, 13);
            this.label8.TabIndex = 3;
            this.label8.Text = "Email";
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
            this.btnSearchSupplier.Location = new System.Drawing.Point(63, 13);
            this.btnSearchSupplier.Name = "btnSearchSupplier";
            this.btnSearchSupplier.Size = new System.Drawing.Size(75, 23);
            this.btnSearchSupplier.TabIndex = 0;
            this.btnSearchSupplier.Text = "Search";
            this.btnSearchSupplier.UseVisualStyleBackColor = true;
            this.btnSearchSupplier.Click += new System.EventHandler(this.btnSearchSupplier_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(88, 220);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(23, 13);
            this.label1.TabIndex = 24;
            this.label1.Text = "Qty";
            // 
            // txtPurchasedPrice
            // 
            this.txtPurchasedPrice.Location = new System.Drawing.Point(118, 242);
            this.txtPurchasedPrice.Name = "txtPurchasedPrice";
            this.txtPurchasedPrice.Size = new System.Drawing.Size(100, 20);
            this.txtPurchasedPrice.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(27, 245);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 13);
            this.label2.TabIndex = 24;
            this.label2.Text = "Purchased Price";
            // 
            // txtSellPrice
            // 
            this.txtSellPrice.Location = new System.Drawing.Point(118, 268);
            this.txtSellPrice.Name = "txtSellPrice";
            this.txtSellPrice.Size = new System.Drawing.Size(100, 20);
            this.txtSellPrice.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(61, 271);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 13);
            this.label3.TabIndex = 24;
            this.label3.Text = "Sell Price";
            // 
            // checkBuyForCredit
            // 
            this.checkBuyForCredit.AutoSize = true;
            this.checkBuyForCredit.Location = new System.Drawing.Point(130, 349);
            this.checkBuyForCredit.Name = "checkBuyForCredit";
            this.checkBuyForCredit.Size = new System.Drawing.Size(88, 17);
            this.checkBuyForCredit.TabIndex = 6;
            this.checkBuyForCredit.Text = "Buy by Credit";
            this.checkBuyForCredit.UseVisualStyleBackColor = true;
            // 
            // txtInvoiceNumber
            // 
            this.txtInvoiceNumber.Location = new System.Drawing.Point(118, 190);
            this.txtInvoiceNumber.Name = "txtInvoiceNumber";
            this.txtInvoiceNumber.Size = new System.Drawing.Size(100, 20);
            this.txtInvoiceNumber.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(27, 193);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 13);
            this.label4.TabIndex = 24;
            this.label4.Text = "Invoice Number";
            // 
            // dtpStockRecieveDate
            // 
            this.dtpStockRecieveDate.Location = new System.Drawing.Point(18, 323);
            this.dtpStockRecieveDate.Name = "dtpStockRecieveDate";
            this.dtpStockRecieveDate.Size = new System.Drawing.Size(200, 20);
            this.dtpStockRecieveDate.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(5, 298);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(104, 13);
            this.label5.TabIndex = 28;
            this.label5.Text = "Stock Recieve Date";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnNewStock);
            this.groupBox1.Controls.Add(this.txLotNumber);
            this.groupBox1.Controls.Add(this.btnPrint);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.pbBarcode);
            this.groupBox1.Location = new System.Drawing.Point(250, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(268, 166);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Barcode";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(6, 16);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(62, 13);
            this.label12.TabIndex = 2;
            this.label12.Text = "Lot Number";
            // 
            // txLotNumber
            // 
            this.txLotNumber.Enabled = false;
            this.txLotNumber.Location = new System.Drawing.Point(74, 13);
            this.txLotNumber.Name = "txLotNumber";
            this.txLotNumber.Size = new System.Drawing.Size(182, 20);
            this.txLotNumber.TabIndex = 3;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 123);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(25, 13);
            this.label9.TabIndex = 4;
            this.label9.Text = "NIC";
            // 
            // txtspNIC
            // 
            this.txtspNIC.Location = new System.Drawing.Point(63, 120);
            this.txtspNIC.Name = "txtspNIC";
            this.txtspNIC.ReadOnly = true;
            this.txtspNIC.Size = new System.Drawing.Size(170, 20);
            this.txtspNIC.TabIndex = 23;
            // 
            // pbBarcode
            // 
            this.pbBarcode.Location = new System.Drawing.Point(6, 39);
            this.pbBarcode.Name = "pbBarcode";
            this.pbBarcode.Size = new System.Drawing.Size(250, 80);
            this.pbBarcode.TabIndex = 30;
            this.pbBarcode.TabStop = false;
            // 
            // btnPrint
            // 
            this.btnPrint.Enabled = false;
            this.btnPrint.Location = new System.Drawing.Point(181, 125);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(75, 23);
            this.btnPrint.TabIndex = 31;
            this.btnPrint.Text = "Print";
            this.btnPrint.UseVisualStyleBackColor = true;
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // btnNewStock
            // 
            this.btnNewStock.Enabled = false;
            this.btnNewStock.Location = new System.Drawing.Point(100, 125);
            this.btnNewStock.Name = "btnNewStock";
            this.btnNewStock.Size = new System.Drawing.Size(75, 23);
            this.btnNewStock.TabIndex = 32;
            this.btnNewStock.Text = "New Stock";
            this.btnNewStock.UseVisualStyleBackColor = true;
            // 
            // StockReceive
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dtpStockRecieveDate);
            this.Controls.Add(this.txtInvoiceNumber);
            this.Controls.Add(this.checkBuyForCredit);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Supplier);
            this.Controls.Add(this.txtSellPrice);
            this.Controls.Add(this.txtPurchasedPrice);
            this.Controls.Add(this.txtQty);
            this.Controls.Add(this.dgStock);
            this.Controls.Add(this.btnInsert);
            this.Name = "StockReceive";
            this.Size = new System.Drawing.Size(954, 508);
            this.Load += new System.EventHandler(this.StockReceive_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgStock)).EndInit();
            this.Supplier.ResumeLayout(false);
            this.Supplier.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbBarcode)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgStock;
        private System.Windows.Forms.Button btnInsert;
        private System.Windows.Forms.TextBox txtQty;
        private System.Windows.Forms.GroupBox Supplier;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtPurchasedPrice;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtSellPrice;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnSearchSupplier;
        private System.Windows.Forms.CheckBox checkBuyForCredit;
        private System.Windows.Forms.TextBox txtInvoiceNumber;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker dtpStockRecieveDate;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtspName;
        private System.Windows.Forms.TextBox txtspContact;
        private System.Windows.Forms.TextBox txtspEmail;
        private System.Windows.Forms.TextBox txtspFax;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txLotNumber;
        private System.Windows.Forms.TextBox txtspNIC;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.PictureBox pbBarcode;
        private System.Windows.Forms.Button btnPrint;
        private System.Windows.Forms.Button btnNewStock;
    }
}
