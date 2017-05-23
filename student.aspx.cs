using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace MySQL_CRUD
{
    public partial class student : System.Web.UI.Page
    {
        MySqlConnection conn = new
        MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    BindGridView();

                }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message);
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                int SID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
                string deletequery = "Delete From student where SID='" + SID + "'";
                MySqlCommand cmd = new MySqlCommand(deletequery,conn);

                cmd.ExecuteNonQuery();
                cmd.Dispose();

                ShowMessage("Delete Successfully");
                //Response.Write("Delete data Successfully");

                GridView1.EditIndex = -1;
                BindGridView();
            }
            catch (MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
        }

        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language = 'javascript' > alert('" + msg + "');</ script > ");
        }
        private void BindGridView()
        {
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                String selectquery = "Select * from Student ORDER BY SID DESC";
                MySqlCommand cmd = new MySqlCommand(selectquery, conn);
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            catch (MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
          
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                ShowMessage("connection success");
                String insertquery = "Insert into student (Name,Address,Email,Mobile) values('"+txtName.Text+"','"+txtAddress.Text+"','"+txtEmail.Text+"','"+ txtMobile.Text+"')";
                MySqlCommand cmd = new MySqlCommand(insertquery,conn);                  
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                ShowMessage("Student information added successfully");
                
                
                BindGridView();
                Cleandata();                

            }
            catch (MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
         
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string updatequery = "update student Set Name ='" + txtName.Text + "', Address = '" + txtAddress.Text + "', Mobile ='" + txtMobile.Text + "', Email ='" + txtEmail.Text + "' where SID = '" + SID.Text + "'";
                MySqlCommand cmd = new MySqlCommand(updatequery, conn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                ShowMessage("Update Successfully");

                GridView1.EditIndex = -1;
                BindGridView();
                btnUpdate.Visible = false;
            }
            catch (MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
        }
        
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Cleandata();
        }
        void Cleandata()
        {
            txtName.Text = string.Empty; txtAddress.Text = string.Empty; txtMobile.Text = string.Empty;txtEmail.Text = string.Empty;
            txtName.Focus();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnSubmit.Visible = false;
            btnUpdate.Visible = true;

            GridViewRow row = GridView1.SelectedRow;
            SID.Text = row.Cells[2].Text;
            txtName.Text = row.Cells[3].Text;
            txtAddress.Text = row.Cells[4].Text;
            txtEmail.Text = row.Cells[5].Text;
            txtMobile.Text = row.Cells[6].Text;


        }
    }
}