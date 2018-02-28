using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace DatabaseApplication
{
    public partial class ConnectionScreen : Form
    {
        SqlConnection dbConnect;
        String connectionstr;
        String databaseName;
        String serverName;
        String loginName;
        String password;
        public ConnectionScreen()
        {
            InitializeComponent();
        }

        private void ConnectionScreen_Load(object sender, EventArgs e)
        {
            //loginNameTextBox.Enabled = false;
            //passwordTextBox.Enabled = false;
        }

      

        private void serverNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            String connectionstr = " Password=" + passwordTextBox.Text + ";Persist Security Info=True;User ID=" + loginNameTextBox.Text + ";Initial Catalog=" + DatabaseNameTextBox.Text + ";Data Source=" + serverNameTextBox.Text;
            try
            {
                dbConnect = new SqlConnection(connectionstr);
                dbConnect.Open();

            }

            catch (SystemException exception)
            {

                MessageBox.Show(exception.Message.ToString());
            }
            if (dbConnect.State == ConnectionState.Open)
            {
                toolStripStatusLabel1.Text = "Connection Succesfull!";
                TableStatistics tands = new TableStatistics(dbConnect, this);
                tands.Show();
                this.Hide();

            }
            else
                toolStripStatusLabel1.Text = "Connection Does not Provide!";
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit(); 
        }

        private void DatabaseNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            connectionstr = "Data Source =" + serverNametextBoxWin.Text + ";" + "Initial Catalog=" + databaseNametextBoxWin.Text + "; Integrated Security=true;";
            try
            {
                dbConnect = new SqlConnection(connectionstr);
                dbConnect.Open();

            }

            catch (SystemException exception)
            {

                MessageBox.Show(exception.Message.ToString());
            }
            if (dbConnect.State == ConnectionState.Open)
            {
                toolStripStatusLabel1.Text = "Connection Succesfull!";
                TableStatistics tands = new TableStatistics(dbConnect, this);
                tands.Show();
                this.Hide();

            }
            else
                toolStripStatusLabel1.Text = "Connection Does not Provide!";
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }
    }
}
