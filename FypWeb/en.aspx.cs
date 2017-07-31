using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class en : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b4_Click(object sender, EventArgs e)
        {
            f1.SaveAs(Request.PhysicalApplicationPath + "./pictures/" + f1.FileName.ToString());
            b = "./pictures/" + f1.FileName.ToString();
            conn.Open();
            string query = "INSERT INTO Entertainers values('" + (Name.Text).ToString() + "','" + (Contact.Text).ToString() + "','" + (type.Text).ToString() + "','" + (Rat.Text).ToString() + "','" + b.ToString() + "','" + (pr.Text).ToString() + "','" + (pid.Text).ToString() + "')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Connection = conn;
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("en.aspx");
        }
    }
}