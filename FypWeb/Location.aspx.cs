using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FypWeb
{
    public partial class Location : System.Web.UI.Page
    {
        double clat,clong;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["budget"] == null)
            {
                Response.Redirect("success.aspx");
            }
            else
            {
                clat = Convert.ToDouble(Request.QueryString["latitude"]);
                clong = Convert.ToDouble(Request.QueryString["longitude"]);

                DataTable dt = this.GetData("select * from Venues");
                rptMarkers.DataSource = dt;
                rptMarkers.DataBind();
            }
        }

        private DataTable GetData(string query)
        {
            // string conString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
        

    }
}