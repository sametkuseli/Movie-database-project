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
        
    public partial class TableColumn : Form
    {
        SqlConnection dbConnect;
        TableStatistics tablestat;
        String tName;
        public TableColumn(String tableName, SqlConnection connection, TableStatistics ts)
        {
            InitializeComponent();
            tablestat = ts;
            dbConnect = connection;
            tName = tableName;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void TableColumn_Load(object sender, EventArgs e)
        {
                this.Text = tName ;
              String sql = "select COLUMN_NAME , DATA_TYPE from INFORMATION_SCHEMA.COLUMNS where TABLE_Name='" + tName + "'";
            SqlCommand command = new SqlCommand(sql, dbConnect);
            if (ConnectionState.Closed == dbConnect.State)
            {
                dbConnect.Open();
            }

            SqlDataReader dataReader = command.ExecuteReader();

            for (int i = 0; dataReader.Read(); i++)
            {
                this.dataGridView1.Rows.Add();
                this.dataGridView1.Rows[i].Cells[0].Value = dataReader.GetValue(0).ToString();
                this.dataGridView1.Rows[i].Cells[1].Value = dataReader.GetValue(1).ToString();
            }
            dataReader.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Application.Exit ();
        }

        private void button2_Click(object sender, EventArgs e)
        {
             Tables tables = new Tables ( tName ,  dbConnect , this);
             tables.Show();
             this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            tablestat.Show();
            this.Dispose();
        }
        }
    }
//}
