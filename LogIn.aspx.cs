using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MySQL_CRUD
{
    public partial class LogIn : System.Web.UI.Page
    {
        MySqlConnection conn = new
        MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            try
            {
                if (txtusername.Text.ToString() != "" && txtpassword.Text.ToString() != "")
                {
                    MySqlDataReader read_rd;
                    String selectquery = "Select * from login where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
                    MySqlCommand cmd = new MySqlCommand(selectquery, conn);
                     read_rd = cmd.ExecuteReader();
                    if (read_rd.HasRows)
                    {
                        Response.Redirect("Student.aspx");
                    }
                    else {
                        Response.Write("<script>alert('LogIn Failed');</script>");
                    }
                }
            }
            catch(MySqlException ex)
            {
                ShowMessage(ex.Message);
            }
        }

        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language = 'javascript' > alert('" + msg + "');</ script > ");
        }

    }
}
