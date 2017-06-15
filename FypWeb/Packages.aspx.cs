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
        
            SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd1 = con.CreateCommand();
            
            cmd.CommandType = CommandType.Text;
            cmd1.CommandType = CommandType.Text;

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                String eventType = Request.QueryString["eventtype"];
                float food_budget = Cart.getFoodBudget();
                int guest = Convert.ToInt32(Session["guest"]);
                float venue_budget = Cart.getVenueBudget();

                SqlDataAdapter da = new SqlDataAdapter("Select Price from FoodPackages", con);
                DataSet dataset = new DataSet();
                da.Fill(dataset, "FoodPackages");
                List<int> myList = new List<int>();
                List<int> package_price = new List<int>();
                foreach (DataRow row in dataset.Tables["FoodPackages"].Rows)
                {
                    package_price.Add(Convert.ToInt32(row["Price"]));
                }

                for (int i = 0; i < package_price.Count; i++)
                {
                    int food = guest * package_price[i];  // Food = The total food cost 
                    myList.Add(food);

                }


                for (int j = 0; j < myList.Count; j++)
                {
                    if (food_budget >= myList[0])
                    {
                        cmd1.CommandText = "Select f.Pictures, f.Price, p.Package_Name from FoodPackages as f join Packages as p on f.PackageID = p.PackageID where p.PackageID = 1";
                        cmd1.ExecuteNonQuery();
                        //DataTable dt1 = new DataTable();
                        //SqlDataAdapter ds1 = new SqlDataAdapter(cmd1);
                        //ds1.Fill(dt);
                        //d31.DataSource = dt1;
                        //d31.DataBind();
                        //con.Close();

                    }
                    else if (food_budget >= myList[1] && food_budget < myList[0])
                    {
                        cmd1.CommandText = "Select f.Pictures, f.Price, p.Package_Name from FoodPackages as f join Packages as p on f.PackageID = p.PackageID where p.PackageID = 2";
                        cmd1.ExecuteNonQuery();
                    }
                    else if (food_budget >= myList[2] && food_budget < myList[1])
                    {
                        cmd1.CommandText = "Select f.Pictures, f.Price, p.Package_Name from FoodPackages as f join Packages as p on f.PackageID = p.PackageID where p.PackageID = 3";
                        cmd1.ExecuteNonQuery();
                    }
                    else if (food_budget >= myList[3] && food_budget < myList[2])
                    {
                        cmd1.CommandText = "Select f.Pictures, f.Price, p.Package_Name from FoodPackages as f join Packages as p on f.PackageID = p.PackageID where p.PackageID = 4";
                        cmd1.ExecuteNonQuery();
                    }
                    else if (food_budget >= myList[4] && food_budget < myList[3])
                    {
                        cmd1.CommandText = "Select f.Pictures, f.Price, p.Package_Name from FoodPackages as f join Packages as p on f.PackageID = p.PackageID where p.PackageID = 5";
                        cmd1.ExecuteNonQuery();
                    }
                    else if (food_budget >= myList[5] && food_budget < myList[4])
                    {
                        cmd1.CommandText = "Select f.Pictures, f.Price, p.Package_Name from FoodPackages as f join Packages as p on f.PackageID = p.PackageID where p.PackageID = 6";
                        cmd1.ExecuteNonQuery();
                    }


                    if (venue_budget >= 400000)
                    {


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

                    else if (venue_budget < 90000 && food_budget > myList[5])
                    {
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
                }
            }


        

        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
    }