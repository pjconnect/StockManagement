namespace StockManagemengBasic
{
    partial class DebtorPay
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
            this.dgDebtors = new System.Windows.Forms.DataGridView();
            this.btnPay = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnCustomerSearch = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txtContactNumber = new System.Windows.Forms.TextBox();
            this.txtNIC = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtBalance = new System.Windows.Forms.TextBox();
            this.txtPaying = new System.Windows.Forms.TextBox();
            this.txtRecieved = new System.Windows.Forms.TextBox();
            this.txtCredit = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgDebtors)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgDebtors
            // 
            this.dgDebtors.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgDebtors.Location = new System.Drawing.Point(355, 8);
            this.dgDebtors.Name = "dgDebtors";
            this.dgDebtors.Size = new System.Drawing.Size(283, 308);
            this.dgDebtors.TabIndex = 0;
            this.dgDebtors.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgDebtors_CellClick);
            // 
            // btnPay
            // 
            this.btnPay.Location = new System.Drawing.Point(169, 293);
            this.btnPay.Name = "btnPay";
            this.btnPay.Size = new System.Drawing.Size(75, 23);
            this.btnPay.TabIndex = 18;
            this.btnPay.Text = "Pay";
            this.btnPay.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnCustomerSearch);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtContactNumber);
            this.groupBox1.Controls.Add(this.txtNIC);
            this.groupBox1.Controls.Add(this.txtName);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(346, 135);
            this.groupBox1.TabIndex = 19;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Search Supplier";
            // 
            // btnCustomerSearch
            // 
            this.btnCustomerSearch.Location = new System.Drawing.Point(106, 25);
            this.btnCustomerSearch.Name = "btnCustomerSearch";
            this.btnCustomerSearch.Size = new System.Drawing.Size(79, 23);
            this.btnCustomerSearch.TabIndex = 1;
            this.btnCustomerSearch.Text = "Search";
            this.btnCustomerSearch.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 105);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(84, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Contact Number";
            // 
            // txtContactNumber
            // 
            this.txtContactNumber.Location = new System.Drawing.Point(106, 102);
            this.txtContactNumber.Name = "txtContactNumber";
            this.txtContactNumber.ReadOnly = true;
            this.txtContactNumber.Size = new System.Drawing.Size(234, 20);
            this.txtContactNumber.TabIndex = 9;
            // 
            // txtNIC
            // 
            this.txtNIC.Location = new System.Drawing.Point(106, 78);
            this.txtNIC.Name = "txtNIC";
            this.txtNIC.ReadOnly = true;
            this.txtNIC.Size = new System.Drawing.Size(234, 20);
            this.txtNIC.TabIndex = 8;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(106, 54);
            this.txtName.Name = "txtName";
            this.txtName.ReadOnly = true;
            this.txtName.Size = new System.Drawing.Size(234, 20);
            this.txtName.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(23, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Nic";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Name";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 270);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(46, 13);
            this.label8.TabIndex = 13;
            this.label8.Text = "Balance";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(9, 244);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(78, 13);
            this.label6.TabIndex = 14;
            this.label6.Text = "Amount Paying";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(9, 218);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(92, 13);
            this.label5.TabIndex = 15;
            this.label5.Text = "Amount Received";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 189);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(73, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Credit Amount";
            // 
            // txtBalance
            // 
            this.txtBalance.Location = new System.Drawing.Point(109, 267);
            this.txtBalance.Name = "txtBalance";
            this.txtBalance.ReadOnly = true;
            this.txtBalance.Size = new System.Drawing.Size(135, 20);
            this.txtBalance.TabIndex = 21;
            // 
            // txtPaying
            // 
            this.txtPaying.Location = new System.Drawing.Point(109, 241);
            this.txtPaying.Name = "txtPaying";
            this.txtPaying.Size = new System.Drawing.Size(135, 20);
            this.txtPaying.TabIndex = 17;
            // 
            // txtRecieved
            // 
            this.txtRecieved.Location = new System.Drawing.Point(109, 215);
            this.txtRecieved.Name = "txtRecieved";
            this.txtRecieved.Size = new System.Drawing.Size(135, 20);
            this.txtRecieved.TabIndex = 12;
            // 
            // txtCredit
            // 
            this.txtCredit.Location = new System.Drawing.Point(109, 189);
            this.txtCredit.Name = "txtCredit";
            this.txtCredit.ReadOnly = true;
            this.txtCredit.Size = new System.Drawing.Size(135, 20);
            this.txtCredit.TabIndex = 20;
            // 
            // DebtorPay
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnPay);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtBalance);
            this.Controls.Add(this.txtPaying);
            this.Controls.Add(this.txtRecieved);
            this.Controls.Add(this.txtCredit);
            this.Controls.Add(this.dgDebtors);
            this.Name = "DebtorPay";
            this.Size = new System.Drawing.Size(842, 408);
            ((System.ComponentModel.ISupportInitialize)(this.dgDebtors)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgDebtors;
        private System.Windows.Forms.Button btnPay;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnCustomerSearch;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtContactNumber;
        private System.Windows.Forms.TextBox txtNIC;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtBalance;
        private System.Windows.Forms.TextBox txtPaying;
        private System.Windows.Forms.TextBox txtRecieved;
        private System.Windows.Forms.TextBox txtCredit;
    }
}