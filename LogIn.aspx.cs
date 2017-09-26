 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MySQL_CRUD
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtusername.Text.ToString() != "" && txtpassword.Text.ToString() != "")
            {            
                Response.Redirect("Student.aspx");
            }            
        }

    }
}
