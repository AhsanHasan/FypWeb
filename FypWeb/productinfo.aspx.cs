using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using FypWeb.App_Code;



namespace FypWeb
{
    public partial class productinfo : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        int id;
        int price;
        string cookieValues;
        string cookieValues1;
        string test;
        string str1;
        string str2;
        string Name, Price, Address, Picture;
        int count = 1;
        List<string> list = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null && Session["budget"] != null)
            {

                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                price = Convert.ToInt32(Request.QueryString["price"].ToString());
                // name = Request.QueryString["name"];
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select v.Address,vt.Capacity,v.Price,v.Contact,v.Picture from VenueThemes as vt join Venues as v ON vt.VenueID=v.VenueID WHERE v.VenueID= '" + id + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);
                d3.DataSource = dt;
                d3.DataBind();
                con.Close();
            }
            else if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["budget"] == null)
            {
                Response.Redirect("success.aspx");
            }
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void d3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void addToCartBtn_Click(object sender, EventArgs e)
        {
            Cart.setId(id);
            Cart.setPrice(price);
            //Cart.setVenue(name);
        }

        List<int> venues = new List<int>();
        protected void btn_AddToCart(object sender, EventArgs e)
        {



            id = Convert.ToInt32(Request.QueryString["id"].ToString());


            venues.Add(id);

            

            int vid = id;

            if (venues.Count != venues.Distinct().Count())
            {
                Response.Write("<script>alert('Duplicate Items');</script>");

            }

            else
            {

                foreach (var items in venues)
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Venues where VenueID = '" + items + "'";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter ds = new SqlDataAdapter(cmd);
                    ds.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {
                        Name = dr["Name"].ToString();
                        Address = dr["Address"].ToString();
                        Picture = dr["Picture"].ToString();
                        Price = dr["Price"].ToString();
                    }
                    con.Close();
                    if (Request.Cookies["aa"] == null)
                    {
                        Response.Cookies["aa"].Value = Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

                    }
                    else
                    {
                        Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                    }
                }
            }
        }





        /*string namevenue = Request.Cookies["aa"].Name.ToString();


        VenuesDataContext db = new VenuesDataContext();
        var x = from y in db.Venues
                where y.Name == namevenue
                select y.VenueID;


        */


        // price = Convert.ToInt32(Request.QueryString["price"].ToString());
        // name = Request.QueryString["name"];
        //con.Open();
        //SqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "select * from Venues where VenueID = '" + id + "'";
        //cmd.ExecuteNonQuery();
        //DataTable dt = new DataTable();
        //SqlDataAdapter ds = new SqlDataAdapter(cmd);
        //ds.Fill(dt);
        //foreach (DataRow dr in dt.Rows)
        //{
        //    Name = dr["Name"].ToString();
        //    Address = dr["Address"].ToString();
        //    Picture = dr["Picture"].ToString();
        //    Price = dr["Price"].ToString();
        //}
        //con.Close();
        //if (Request.Cookies["aa"] == null)
        //{
        //    Response.Cookies["aa"].Value = Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
        //    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
        //    HttpCookie cookie = Request.Cookies["aa"];
        //    cookieValues = cookie.Value.ToString();
        //    Cart.setCookieValues(cookieValues);
        //}


        //else
        //{


        //    //str1 = Cart.getCookieValues();
        //    //test = Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
        //    //list.Add(str1);
        //    //// list.Add(test);

        //    //if (list.Count() == 1)
        //    //{

        //    //    if (list.Equals(test))
        //    //    {
        //    //        //list.Remove(test);
        //    //        Response.Write("<script>alert('You have already selected this item...');</script>");
        //    //    }
        //    //    else
        //    //    {
        //    //        list.Add(test);
        //    //    }
        //    //}
        //    //else if (list.Count() > 1)
        //    //{
        //    //    //if (list.Equals(str1))
        //    //    //{
        //    //    //    list.Remove(str1);
        //    //    //    Response.Write("<script>alert('You have already selected this item...');</script>");
        //    //    //}
        //    //    //else if(!list.Equals(str1)) 
        //    //    //{
        //    //    //    list.Add(str1);
        //    //    //}
        //    //    if (list.Equals(test))
        //    //    {
        //    //        //list.Remove(test);
        //    //        Response.Write("<script>alert('You have already selected this item...');</script>");
        //    //    }
        //    //    else
        //    //    {
        //    //        list.Add(test);
        //    //    }



        //    names.Add(Request.Cookies["aa"].[""]);
        //    //names.Distinct();


        //    if (names.Count != names.Distinct().Count())
        //    {
        //        // Duplicates exist
        //        Response.Write("<script>alert('Duplicate Items In Your Cart');</script>");
        //    }
        //    else
        //    {
        //        Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
        //        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
        //    }









        //    //if (check == true)
        //    //{
        //    //    Response.Write("<script>alert('You have already selected this item...');</script>");
        //    //    //int pipeIndex = cookieValues1.IndexOf("|");
        //    //    //cookieValues1 = cookieValues1.Split('|')[0];

        //    //    Response.Cookies["aa"].Value = str1;

        //    //}
        //    //else
        //    //{
        //    //    Response.Cookies["aa"].Value = str1 + "|" + test;
        //    //}






        //    //list.Add(str1);

        //    //for (int i = 1; i <= list.Count(); i++)
        //    //{
        //    //    if (list[i].Equals("null"))
        //    //    {
        //    //        list.Add(test);
        //    //    }

        //    //    else if (list[i].Equals(list[i - 1]))
        //    //    {
        //    //        list.Remove(list[i]);
        //    //    }
        //    //    else
        //    //    {
        //    //        list.Add(test);
        //    //    }

        //    //}


        //    //cookieValues1 = str1 + "|" + Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();

        //    //bool check;
        //    //check = str1.Equals(test);

        //    //if (check == true)
        //    //{
        //    //    Response.Write("<script>alert('You have already selected this item...');</script>");
        //    //    //int pipeIndex = cookieValues1.IndexOf("|");
        //    //    //cookieValues1 = cookieValues1.Split('|')[0];

        //    //    Response.Cookies["aa"].Value = str1;

        //    //}
        //    //else
        //    //{
        //    //    Response.Cookies["aa"].Value = str1 +"|" + test;
        //    //}


        //    // Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
        //    //Response.Cookies["aa"].Value = cookieValues1;



        //    // Checking For Duplication


        //    //cookieValues1 = Request.Cookies["aa"].Value;

        //    //str1 = Cart.getCookieValues();


        //}






        protected void btn_ContinueShopping(object sender, EventArgs e)
        {
            Response.Redirect("Foods.aspx");
        }
    }
}
    