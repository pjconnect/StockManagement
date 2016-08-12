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
            ((System.ComponentModel.ISupportInitialize)(this.dgStock)).BeginInit();
            this.Supplier.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgStock
            // 
            this.dgStock.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgStock.Location = new System.Drawing.Point(248, 3);
            this.dgStock.Name = "dgStock";
            this.dgStock.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgStock.Size = new System.Drawing.Size(703, 392);
            this.dgStock.TabIndex = 21;
            // 
            // btnInsert
            // 
            this.btnInsert.Location = new System.Drawing.Point(142, 372);
            this.btnInsert.Name = "btnInsert";
            this.btnInsert.Size = new System.Drawing.Size(100, 23);
            this.btnInsert.TabIndex = 20;
            this.btnInsert.Text = "Update Stock";
            this.btnInsert.UseVisualStyleBackColor = true;
            this.btnInsert.Click += new System.EventHandler(this.btnInsert_Click);
            // 
            // txtQty
            // 
            this.txtQty.Location = new System.Drawing.Point(142, 180);
            this.txtQty.Name = "txtQty";
            this.txtQty.Size = new System.Drawing.Size(100, 20);
            this.txtQty.TabIndex = 22;
            // 
            // Supplier
            // 
            this.Supplier.Controls.Add(this.btnSearchSupplier);
            this.Supplier.Location = new System.Drawing.Point(3, 3);
            this.Supplier.Name = "Supplier";
            this.Supplier.Size = new System.Drawing.Size(239, 130);
            this.Supplier.TabIndex = 23;
            this.Supplier.TabStop = false;
            this.Supplier.Text = "Supplier";
            // 
            // btnSearchSupplier
            // 
            this.btnSearchSupplier.Location = new System.Drawing.Point(6, 19);
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
            this.label1.Location = new System.Drawing.Point(112, 184);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(23, 13);
            this.label1.TabIndex = 24;
            this.label1.Text = "Qty";
            // 
            // txtPurchasedPrice
            // 
            this.txtPurchasedPrice.Location = new System.Drawing.Point(142, 206);
            this.txtPurchasedPrice.Name = "txtPurchasedPrice";
            this.txtPurchasedPrice.Size = new System.Drawing.Size(100, 20);
            this.txtPurchasedPrice.TabIndex = 22;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(51, 209);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 13);
            this.label2.TabIndex = 24;
            this.label2.Text = "Purchased Price";
            // 
            // txtSellPrice
            // 
            this.txtSellPrice.Location = new System.Drawing.Point(142, 232);
            this.txtSellPrice.Name = "txtSellPrice";
            this.txtSellPrice.Size = new System.Drawing.Size(100, 20);
            this.txtSellPrice.TabIndex = 22;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(85, 235);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(51, 13);
            this.label3.TabIndex = 24;
            this.label3.Text = "Sell Price";
            // 
            // checkBuyForCredit
            // 
            this.checkBuyForCredit.AutoSize = true;
            this.checkBuyForCredit.Location = new System.Drawing.Point(154, 313);
            this.checkBuyForCredit.Name = "checkBuyForCredit";
            this.checkBuyForCredit.Size = new System.Drawing.Size(88, 17);
            this.checkBuyForCredit.TabIndex = 25;
            this.checkBuyForCredit.Text = "Buy by Credit";
            this.checkBuyForCredit.UseVisualStyleBackColor = true;
            // 
            // txtInvoiceNumber
            // 
            this.txtInvoiceNumber.Location = new System.Drawing.Point(142, 154);
            this.txtInvoiceNumber.Name = "txtInvoiceNumber";
            this.txtInvoiceNumber.Size = new System.Drawing.Size(100, 20);
            this.txtInvoiceNumber.TabIndex = 26;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(51, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 13);
            this.label4.TabIndex = 24;
            this.label4.Text = "Invoice Number";
            // 
            // dtpStockRecieveDate
            // 
            this.dtpStockRecieveDate.Location = new System.Drawing.Point(42, 287);
            this.dtpStockRecieveDate.Name = "dtpStockRecieveDate";
            this.dtpStockRecieveDate.Size = new System.Drawing.Size(200, 20);
            this.dtpStockRecieveDate.TabIndex = 27;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(29, 262);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(104, 13);
            this.label5.TabIndex = 28;
            this.label5.Text = "Stock Recieve Date";
            // 
            // StockReceive
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
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
            this.Size = new System.Drawing.Size(954, 398);
            this.Load += new System.EventHandler(this.StockReceive_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgStock)).EndInit();
            this.Supplier.ResumeLayout(false);
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
    }
}
