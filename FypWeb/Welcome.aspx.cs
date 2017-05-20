using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
     protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }


    //protected void GoButton_Click(object sender, EventArgs e)
    //{

    //    SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");

    //    string query = "Select count(*) from dbo.Customers where CustName='" + l1.Text + "'and Password='" + l2.Text + "'";
    //    SqlCommand cmd = new SqlCommand(query, con);
    //    string output = cmd.ExecuteScalar().ToString();

    //    if (output == "1")
    //    {
    //        Session["user"] = l1.Text;
    //        Response.Redirect("success.aspx");

    //    }


    //}

    protected void login_btn_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
            con.Open();
            string query = "Select count(*) from dbo.Customers where UserName='" + l1.Text + "'and Password='" + l2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Session["user"] = l1.Text;
                Response.Redirect("success.aspx");

            }
            con.Close();
        }
    }
}
