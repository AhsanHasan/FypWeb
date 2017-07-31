using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=KEVIN\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (textbox1.Text == "admin" && textbox2.Text == "1234")
            {
                Response.Redirect("AdminPanel.aspx");
            }

            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }
    }
}
