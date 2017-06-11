using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using FypWeb;

public partial class Login : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection();
    SqlDataAdapter adpt = new SqlDataAdapter();
    DataSet ds = new DataSet();
    

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = @"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True";
        con.Open();

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{

    //    //cmd.CommandText = "Select * from dbo.Customers where CustName='" + TextBox1.Text + "'and Pass='" + TextBox2.Text + "'";
    //    //SqlConnection = conn;
    //    //adpt.SelectCommand = cmd;
    //    //adpt.Fill(ds,dbo.Cu)

    //}


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string query = "Select count(*) from dbo.Customers where UserName='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("success.aspx");
                

            }
            else
            {
                wronglbl.Text = "Incorrect username or password";
            }

        }


        //cmd.Connection = con;
        //adpt.SelectCommand = cmd;
        //adpt.Fill(ds, "dbo.Customers");
        //if (ds.Tables[0].Rows.Count > 0)
        //{

        //    Response.Redirect("success.aspx");
        //}
    }
}