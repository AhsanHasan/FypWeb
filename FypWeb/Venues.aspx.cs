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
    public partial class Venues : System.Web.UI.Page
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
            string query = "INSERT INTO Venues values('" + (Name.Text).ToString() + "','" + (add.Text).ToString() + "','" + (Nl.Text).ToString() + "','" + Convert.ToDecimal(longi.Text) + "','" + Convert.ToDecimal(lat.Text) + "','" + (Con.Text).ToString() + "','" + (Pb.Text).ToString() + "','" + (Rat.Text).ToString() + "','" + b.ToString() + "','" + (vt.Text).ToString() + "','" + (pr.Text).ToString() + "','" + (pid.Text).ToString() + "')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Connection = conn;
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Venues.aspx");

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}