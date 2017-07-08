using FypWeb.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class EntertainerPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                String eventType = Request.QueryString["eventtype"];
                float entertainer_budget = Cart.getEntertainerBudget();

                //if (eventType != "BusinessMeetings")
                    if (entertainer_budget >= 700000)
                    {
                        con.Open();

                        cmd.CommandText = "Select e.Name,e.Picture,e.Price,e.Type, p.Package_Name from Entertainers as e join Packages as p on e.PackageID = p.PackageID where p.PackageID = 1";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();
                    }

                    else if (entertainer_budget >= 450000 && entertainer_budget < 700000)
                    {
                        con.Open();

                        cmd.CommandText = "Select e.Name,e.Picture,e.Price,e.Type, p.Package_Name from Entertainers as e join Packages as p on e.PackageID = p.PackageID where p.PackageID = 2";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();

                    }

                    else if (entertainer_budget >= 350000 && entertainer_budget < 450000)
                    {
                        con.Open();

                        cmd.CommandText = "Select e.Name,e.Picture,e.Price,e.Type, p.Package_Name from Entertainers as e join Packages as p on e.PackageID = p.PackageID where p.PackageID = 3";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();

                    }

                    else if (entertainer_budget >= 35000 && entertainer_budget < 350000)
                    {
                        con.Open();

                        cmd.CommandText = "Select e.Name,e.Picture,e.Price, e.Type, p.Package_Name from Entertainers as e join Packages as p on e.PackageID = p.PackageID where p.PackageID = 5";
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter ds = new SqlDataAdapter(cmd);
                        ds.Fill(dt);
                        d3.DataSource = dt;
                        d3.DataBind();
                        con.Close();

                    }
                    else if (entertainer_budget >= 10000 && entertainer_budget < 35000)
                    {
                        con.Open();

                        cmd.CommandText = "Select e.Name,e.Picture,e.Price,e.Type, p.Package_Name from Entertainers as e join Packages as p on e.PackageID = p.PackageID where p.PackageID = 6";
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
                    noBalance.Text = ("Sorry.. You Do Not Have Sufficient Budget Left!!!!");
                        Response.Write("<script>alert('Sorry.. You Do Not Have Sufficient Budget!!!')</script>");
                    }

            }



        }
        protected void btn_Skip(object sender, EventArgs e)
        {
            
        }

        protected void btn_AddToCart(object sender, EventArgs e)
        {
            Response.Redirect("EntertainerPackages.aspx");
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}