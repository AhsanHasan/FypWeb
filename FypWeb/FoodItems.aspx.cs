using System;
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
    public partial class FoodItems : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b2_Click(object sender, EventArgs e)
        {
            f1.SaveAs(Request.PhysicalApplicationPath + "./pictures/" + f1.FileName.ToString());
            b = "./pictures/" + f1.FileName.ToString();
            conn.Open();
            string query = "INSERT INTO FoodItems values('" + b.ToString() + "','" + (pid.Text).ToString()+ "','" + (pr.Text).ToString() + "','"+ (Name.Text).ToString() +"')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Connection = conn;
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("FoodItems.aspx");

        }

       
    }
}