using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FypWeb.App_Code;
using System.Data.SqlClient;
using System.Data;

namespace FypWeb
{
    public partial class Packages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");

            SqlCommand cmd = con.CreateCommand();
            //SqlCommand cmd1 = con.CreateCommand();

            cmd.CommandType = CommandType.Text;
            //cmd1.CommandType = CommandType.Text;

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                String eventType = Request.QueryString["eventtype"];
                //float food_budget = Cart.getFoodBudget();
                //int guest = Convert.ToInt32(Session["guest"]);
                float venue_budget = Cart.getVenueBudget();

                

                    if (venue_budget >= 400000)
                    {

                        con.Open();

                        cmd.CommandText = "Select v.Name,v.Picture,v.Price,v.Address,v.Contact, p.Package_Name from Venues as v join Packages as p on v.PackageID = p.PackageID where p.PackageID = 1 and v.VenueType like '%" + eventType + "%'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }
                    else if (venue_budget >= 300000 && venue_budget < 400000)
                    {
                        con.Open();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "Select v.Name,v.Picture,v.Price,v.Address,v.Contact, p.Package_Name from Venues as v join Packages as p on v.PackageID = p.PackageID  where p.PackageID = 2 and v.VenueType like '%" + eventType + "%'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }

                    else if (venue_budget >= 200000 && venue_budget < 300000)
                    {
                        con.Open();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "Select v.Name,v.Picture,v.Price,v.Address,v.Contact, p.Package_Name from Venues as v join Packages as p on v.PackageID = p.PackageID where p.PackageID = 3 and v.VenueType like '%" + eventType + "%'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }

                    else if (venue_budget >= 100000 && venue_budget < 200000)
                    {
                        con.Open();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "Select v.Name,v.Picture,v.Price,v.Address,v.Contact, p.Package_Name from Venues as v join Packages as p on v.PackageID = p.PackageID where p.PackageID = 4 and v.VenueType like '%" + eventType + "%'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }

                    else if (venue_budget > 90000 && venue_budget <= 100000)
                    {
                        con.Open();
                        cmd.CommandType = CommandType.Text;

                        cmd.CommandText = "Select v.Name,v.Picture,v.Price,v.Address,v.Contact, p.Package_Name from Venues as v join Packages as p on v.PackageID = p.PackageID where p.PackageID = 5 and v.VenueType like '%" + eventType + "%'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }

                    else if (venue_budget < 90000)
                    {
                        con.Open();
                        cmd.CommandType = CommandType.Text;

                        cmd.CommandText = "Select v.Name,v.Picture,v.Price,v.Address,v.Contact, p.Package_Name from Venues as v join Packages as p on v.PackageID = p.PackageID where p.PackageID = 6 and v.VenueType like '%" + eventType + "%'";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry.. You Do Not Have Sufficient Budget!!!')</script>");
                    }
                }
            }
        

       


        protected void btn_AddToCart(object sender, EventArgs e)
        {
            Response.Redirect("FPackages.aspx");
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void d3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}