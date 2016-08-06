namespace StockManagemengBasic
{
    partial class SupplierIn
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
            this.dgItem = new System.Windows.Forms.DataGridView();
            this.btnEnter = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgItem)).BeginInit();
            this.SuspendLayout();
            // 
            // txtItemID
            // 
            this.txtItemID.Location = new System.Drawing.Point(70, 12);
            this.txtItemID.Name = "txtItemID";
            this.txtItemID.Size = new System.Drawing.Size(100, 20);
            this.txtItemID.TabIndex = 0;
            // 
            // dgItem
            // 
            this.dgItem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgItem.Location = new System.Drawing.Point(70, 68);
            this.dgItem.Name = "dgItem";
            this.dgItem.Size = new System.Drawing.Size(240, 150);
            this.dgItem.TabIndex = 1;
            // 
            // btnEnter
            // 
            this.btnEnter.Location = new System.Drawing.Point(202, 13);
            this.btnEnter.Name = "btnEnter";
            this.btnEnter.Size = new System.Drawing.Size(75, 23);
            this.btnEnter.TabIndex = 2;
            this.btnEnter.Text = "btnEnter";
            this.btnEnter.UseVisualStyleBackColor = true;
            this.btnEnter.Click += new System.EventHandler(this.btnEnter_Click);
            // 
            // SupplierIn
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(401, 274);
            this.Controls.Add(this.btnEnter);
            this.Controls.Add(this.dgItem);
            this.Controls.Add(this.txtItemID);
            this.Name = "SupplierIn";
            this.Text = "SupplierIn";
            ((System.ComponentModel.ISupportInitialize)(this.dgItem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtItemID;
        private System.Windows.Forms.DataGridView dgItem;
        private System.Windows.Forms.Button btnEnter;
    }
}