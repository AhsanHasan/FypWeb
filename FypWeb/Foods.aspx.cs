using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FypWeb
{
    public partial class Foods : System.Web.UI.Page
    {
        

            SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from FoodPackages";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            ds.Fill(dt);
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            con.Close();
        }

    
        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            HttpCookie mycookie = new HttpCookie("venues");
            HttpCookie mycookie1 = new HttpCookie("food");
            HttpCookie mycookie2 = new HttpCookie("entertainer");
            mycookie.Expires = DateTime.Now.AddDays(-1);
            mycookie1.Expires = DateTime.Now.AddDays(-1d);
            mycookie2.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(mycookie1);
            Response.Cookies.Add(mycookie);
            Response.Cookies.Add(mycookie2);

            Response.Redirect("Login.aspx");
        }
    }
}