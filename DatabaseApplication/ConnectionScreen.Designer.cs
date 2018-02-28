namespace DatabaseApplication
{
    partial class ConnectionScreen
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
            this.label1 = new System.Windows.Forms.Label();
            this.serverNameTextBox = new System.Windows.Forms.TextBox();
            this.DatabaseNameTextBox = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.passwordTextBox = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.loginNameTextBox = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.serverNametextBoxWin = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.databaseNametextBoxWin = new System.Windows.Forms.TextBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.statusStrip1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(69, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Server Name";
            // 
            // serverNameTextBox
            // 
            this.serverNameTextBox.Location = new System.Drawing.Point(110, 12);
            this.serverNameTextBox.Name = "serverNameTextBox";
            this.serverNameTextBox.Size = new System.Drawing.Size(143, 20);
            this.serverNameTextBox.TabIndex = 1;
            this.serverNameTextBox.TextChanged += new System.EventHandler(this.serverNameTextBox_TextChanged);
            // 
            // DatabaseNameTextBox
            // 
            this.DatabaseNameTextBox.Location = new System.Drawing.Point(110, 51);
            this.DatabaseNameTextBox.Name = "DatabaseNameTextBox";
            this.DatabaseNameTextBox.Size = new System.Drawing.Size(143, 20);
            this.DatabaseNameTextBox.TabIndex = 3;
            this.DatabaseNameTextBox.TextChanged += new System.EventHandler(this.DatabaseNameTextBox_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(7, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Database Name";
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1});
            this.statusStrip1.Location = new System.Drawing.Point(0, 329);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(339, 22);
            this.statusStrip1.TabIndex = 5;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(0, 17);
            // 
            // passwordTextBox
            // 
            this.passwordTextBox.Location = new System.Drawing.Point(110, 173);
            this.passwordTextBox.Name = "passwordTextBox";
            this.passwordTextBox.Size = new System.Drawing.Size(143, 20);
            this.passwordTextBox.TabIndex = 9;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(7, 180);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Password";
            // 
            // loginNameTextBox
            // 
            this.loginNameTextBox.Location = new System.Drawing.Point(110, 134);
            this.loginNameTextBox.Name = "loginNameTextBox";
            this.loginNameTextBox.Size = new System.Drawing.Size(143, 20);
            this.loginNameTextBox.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(7, 141);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(64, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Login Name";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(27, 234);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(107, 34);
            this.button1.TabIndex = 10;
            this.button1.Text = "Login";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(183, 234);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(107, 34);
            this.button2.TabIndex = 11;
            this.button2.Text = "Exit";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(0, 7);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(339, 325);
            this.tabControl1.TabIndex = 12;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.Gainsboro;
            this.tabPage1.Controls.Add(this.button3);
            this.tabPage1.Controls.Add(this.button4);
            this.tabPage1.Controls.Add(this.serverNametextBoxWin);
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.label6);
            this.tabPage1.Controls.Add(this.databaseNametextBoxWin);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(361, 299);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Windows Authentication";
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(191, 119);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(107, 34);
            this.button3.TabIndex = 13;
            this.button3.Text = "Exit";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(24, 119);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(107, 34);
            this.button4.TabIndex = 12;
            this.button4.Text = "Login";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // serverNametextBoxWin
            // 
            this.serverNametextBoxWin.Location = new System.Drawing.Point(148, 12);
            this.serverNametextBoxWin.Name = "serverNametextBoxWin";
            this.serverNametextBoxWin.Size = new System.Drawing.Size(143, 20);
            this.serverNametextBoxWin.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 19);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Server Name";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 58);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(84, 13);
            this.label6.TabIndex = 6;
            this.label6.Text = "Database Name";
            // 
            // databaseNametextBoxWin
            // 
            this.databaseNametextBoxWin.Location = new System.Drawing.Point(148, 51);
            this.databaseNametextBoxWin.Name = "databaseNametextBoxWin";
            this.databaseNametextBoxWin.Size = new System.Drawing.Size(143, 20);
            this.databaseNametextBoxWin.TabIndex = 7;
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.Gainsboro;
            this.tabPage2.Controls.Add(this.serverNameTextBox);
            this.tabPage2.Controls.Add(this.button2);
            this.tabPage2.Controls.Add(this.label1);
            this.tabPage2.Controls.Add(this.button1);
            this.tabPage2.Controls.Add(this.label2);
            this.tabPage2.Controls.Add(this.passwordTextBox);
            this.tabPage2.Controls.Add(this.DatabaseNameTextBox);
            this.tabPage2.Controls.Add(this.label3);
            this.tabPage2.Controls.Add(this.label4);
            this.tabPage2.Controls.Add(this.loginNameTextBox);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(331, 299);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "SQL Authentication";
            this.tabPage2.Click += new System.EventHandler(this.tabPage2_Click);
            // 
            // ConnectionScreen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(339, 351);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.statusStrip1);
            this.Name = "ConnectionScreen";
            this.Text = "Connection Screen";
            this.Load += new System.EventHandler(this.ConnectionScreen_Load);
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox serverNameTextBox;
        private System.Windows.Forms.TextBox DatabaseNameTextBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.TextBox passwordTextBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox loginNameTextBox;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TextBox serverNametextBoxWin;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox databaseNametextBoxWin;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
    }
}

