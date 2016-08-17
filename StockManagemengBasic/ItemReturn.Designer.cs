namespace StockManagemengBasic
{
    partial class ItemReturn
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
            this.label1 = new System.Windows.Forms.Label();
            this.txtSearchInvoice = new System.Windows.Forms.TextBox();
            this.dgInvoiceItems = new System.Windows.Forms.DataGridView();
            this.txtReturnedQty = new System.Windows.Forms.TextBox();
            this.txtReturnedReason = new System.Windows.Forms.TextBox();
            this.btnReturn = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgInvoiceItems)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(341, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Search";
            // 
            // txtSearchInvoice
            // 
            this.txtSearchInvoice.Location = new System.Drawing.Point(388, 18);
            this.txtSearchInvoice.Name = "txtSearchInvoice";
            this.txtSearchInvoice.Size = new System.Drawing.Size(284, 20);
            this.txtSearchInvoice.TabIndex = 1;
            // 
            // dgInvoiceItems
            // 
            this.dgInvoiceItems.AllowUserToAddRows = false;
            this.dgInvoiceItems.AllowUserToDeleteRows = false;
            this.dgInvoiceItems.AllowUserToResizeColumns = false;
            this.dgInvoiceItems.AllowUserToResizeRows = false;
            this.dgInvoiceItems.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgInvoiceItems.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgInvoiceItems.Location = new System.Drawing.Point(3, 18);
            this.dgInvoiceItems.Name = "dgInvoiceItems";
            this.dgInvoiceItems.ReadOnly = true;
            this.dgInvoiceItems.RowHeadersVisible = false;
            this.dgInvoiceItems.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgInvoiceItems.Size = new System.Drawing.Size(328, 136);
            this.dgInvoiceItems.TabIndex = 7;
            this.dgInvoiceItems.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgInvoiceItems_CellClick);
            // 
            // txtReturnedQty
            // 
            this.txtReturnedQty.Location = new System.Drawing.Point(231, 160);
            this.txtReturnedQty.Name = "txtReturnedQty";
            this.txtReturnedQty.Size = new System.Drawing.Size(100, 20);
            this.txtReturnedQty.TabIndex = 8;
            // 
            // txtReturnedReason
            // 
            this.txtReturnedReason.Location = new System.Drawing.Point(196, 186);
            this.txtReturnedReason.Multiline = true;
            this.txtReturnedReason.Name = "txtReturnedReason";
            this.txtReturnedReason.Size = new System.Drawing.Size(135, 36);
            this.txtReturnedReason.TabIndex = 9;
            // 
            // btnReturn
            // 
            this.btnReturn.Location = new System.Drawing.Point(255, 229);
            this.btnReturn.Name = "btnReturn";
            this.btnReturn.Size = new System.Drawing.Size(75, 23);
            this.btnReturn.TabIndex = 10;
            this.btnReturn.Text = "Make Return";
            this.btnReturn.UseVisualStyleBackColor = true;
            this.btnReturn.Click += new System.EventHandler(this.btnReturn_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(145, 189);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Reason";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(145, 163);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(70, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Returned Qty";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(344, 44);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(328, 346);
            this.dataGridView1.TabIndex = 7;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgInvoiceItems_CellClick);
            // 
            // ItemReturn
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnReturn);
            this.Controls.Add(this.txtReturnedReason);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.dgInvoiceItems);
            this.Controls.Add(this.txtReturnedQty);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtSearchInvoice);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label3);
            this.Name = "ItemReturn";
            this.Size = new System.Drawing.Size(766, 506);
            ((System.ComponentModel.ISupportInitialize)(this.dgInvoiceItems)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtSearchInvoice;
        private System.Windows.Forms.DataGridView dgInvoiceItems;
        private System.Windows.Forms.Button btnReturn;
        private System.Windows.Forms.TextBox txtReturnedReason;
        private System.Windows.Forms.TextBox txtReturnedQty;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}
