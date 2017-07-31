using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class VenueSchedule : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=KEVIN\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "INSERT INTO VenueSchedule values('" + Convert.ToDateTime(t1.Text) + "','" + Convert.ToDateTime(t2.Text) + "')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Connection = conn;
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("VenueSchedule.aspx");

        }


    }
}