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
    public partial class TableStatistics : Form
    {
        SqlConnection dbConnect;
        ConnectionScreen connectionsc;

        public TableStatistics(SqlConnection connection , ConnectionScreen cs)
        {
            InitializeComponent();
            dbConnect = connection;
           connectionsc = cs;
        }

        private void TableandStatistics_Load(object sender, EventArgs e)
        {

            if (ConnectionState.Closed == dbConnect.State)
            {
                connectionstatus.Text = "Connection Failed";
            }
            else
            {

                connectionstatus.Text = "Connection Success!";
            }
            DataTable tables = dbConnect.GetSchema("Tables");
            int i = 0;
            foreach (DataRow row in tables.Rows)
            {
                String tableName = (String)row[2];
                String tableType = (String)row[3];
                if (tableType.Equals("BASE TABLE"))
                {
                    this.dataGridView1.Rows.Add();
                    this.dataGridView1.Rows[i].Cells[0].Value = tableName;
                    String sql = "select COUNT(*) from " + tableName;
                    SqlCommand command = new SqlCommand(sql, dbConnect);
                    if (ConnectionState.Closed == dbConnect.State)
                    {
                        dbConnect.Open();
                    }

                    SqlDataReader dataReader = command.ExecuteReader();
                    dataReader.Read();
                    this.dataGridView1.Rows[i].Cells[1].Value = dataReader.GetValue(0).ToString();
                    i++;
                    dataReader.Close();
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Application.Exit(); 
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String tableName = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
            TableColumn  tableColumn = new TableColumn (tableName, dbConnect, this);
            tableColumn.Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            connectionsc.Show();
            this.Dispose();
        }
    }
}
