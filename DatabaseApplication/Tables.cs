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
    public partial class Tables : Form
    {
        String tName;
        SqlConnection dbConnection;
        TableColumn tableCol;
       
        SqlDataAdapter dbDataAdapter;
        SqlCommandBuilder dbCommandBuilder;
        
        private int RowIndex;
        DataSet dbDataSet;
        DataTable dbTable;

        public Tables(String tableName , SqlConnection connectiontc, TableColumn tc)
        {
            InitializeComponent();
            tName = tableName;
            dbConnection = connectiontc;
            tableCol = tc;
        }

        private void Tables_Load(object sender, EventArgs e)
        {
            this.Text = tName;
            String sql = "select * from " + tName ;
            dbDataAdapter = new SqlDataAdapter(sql, dbConnection );
            dbDataSet = new DataSet();
            dbDataAdapter.Fill(dbDataSet, tName);
            dbTable = dbDataSet.Tables[tName];
            dataGridView1.DataSource = dbDataSet;
            dataGridView1.DataMember = tName;
            dbCommandBuilder = new SqlCommandBuilder(dbDataAdapter);
            dbDataAdapter.DeleteCommand = dbCommandBuilder.GetDeleteCommand();
            dbDataAdapter.UpdateCommand = dbCommandBuilder.GetUpdateCommand();
            dbDataAdapter.InsertCommand = dbCommandBuilder.GetInsertCommand();
            dataGridView1.AllowUserToDeleteRows = false;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (!this.dataGridView1.Rows[this.RowIndex].IsNewRow)
            {
                try
                {
                    dataGridView1.Rows.RemoveAt(dataGridView1.SelectedRows[0].Index);
                    dbDataAdapter.Update(dbDataSet, tName);
                }
                catch (System.Data.SqlClient.SqlException ex)
                {
                   // this.UpdateTable_Load(sender, e);
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void contextMenuStrip1_Opening(object sender, CancelEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                dbDataAdapter.Update(dbTable);
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
              //  this.UpdateTable_Load(sender, e);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            tableCol.Show();
            this.Dispose();
        }
    }
}
