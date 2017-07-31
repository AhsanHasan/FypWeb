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
        string query;
        int price;
        string cookievalue1;
        String venue;
        
        
        string Name, Price, Address, Picture;
        int count = 1;
        List<string> list = new List<string>();
        //static List<int> venues = new List<int>();
        //static HashSet<int> hashset = new HashSet<int>();
        
        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["user"] != null)
            {
                try {
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    price = Convert.ToInt32(Request.QueryString["price"].ToString());
                    // name = Request.QueryString["name"];
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select v.Name,v.Address,vt.Capacity,v.Price,v.Contact,v.Picture from VenueThemes as vt join Venues as v ON vt.VenueID=v.VenueID WHERE v.VenueID= '" + id + "'";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter ds = new SqlDataAdapter(cmd);
                    ds.Fill(dt);
                    d3.DataSource = dt;
                    d3.DataBind();
                    con.Close();
                    BindData();
                }
                catch (Exception)
                {
                    //Something goes here
                }
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

        protected void d3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void addToCartBtn_Click(object sender, EventArgs e)
        {
            Cart.setId(id);
            Cart.setPrice(price);
            //Cart.setVenue(name);
        }

        List<String> venueList = new List<String>();
        HashSet<String> hashset = new HashSet<string>();
        protected void btn_AddToCart(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            //    venues.Add(id);



            //    foreach (var vid in venues)
            //    {

            //        if (!hashset.Add(vid))
            //        {
            //            Response.Write("<script>alert('Duplicate Items');</script>");
            //            break;

            //        }

            //        else
            //        {

            //            foreach (var items in hashset)
            //            {
            //                con.Open();
            //                SqlCommand cmd = con.CreateCommand();
            //                cmd.CommandType = CommandType.Text;
            //                cmd.CommandText = "select * from Venues where VenueID = '" + items + "'";
            //                cmd.ExecuteNonQuery();
            //                DataTable dt = new DataTable();
            //                SqlDataAdapter ds = new SqlDataAdapter(cmd);
            //                ds.Fill(dt);
            //                foreach (DataRow dr in dt.Rows)
            //                {
            //                    Name = dr["Name"].ToString();
            //                    Address = dr["Address"].ToString();
            //                    Picture = dr["Picture"].ToString();
            //                    Price = dr["Price"].ToString();
            //                }
            //                con.Close();
            //                if (Request.Cookies["aa"] == null)
            //                {
            //                    Response.Cookies["aa"].Value = Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
            //                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            //                }
            //                else
            //                {
            //                    Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
            //                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            //                }

            //            }
            //        }
            //    }


            //}



            /*string namevenue = Request.Cookies["aa"].Name.ToString();


            VenuesDataContext db = new VenuesDataContext();
            var x = from y in db.Venues
                    where y.Name == namevenue
                    select y.VenueID;


            */


            //price = Convert.ToInt32(Request.QueryString["price"].ToString());
            //name = Request.QueryString["name"];
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Venues where VenueID = '" + id + "'";
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
            if (Request.Cookies["venues"] == null)
            {
                Response.Cookies["venues"].Value = id.ToString() + "," + Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["venues"].Expires = DateTime.Now.AddDays(1);
              
            }


            else
            {
                //Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + Name.ToString() + "," + Address.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                //Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                //venue = Response.Cookies["aa"].Value;
                //String[] venueArray = venue.Split('|');
                //hashset =new HashSet<string>(venueArray);

                //String str = string.Join("|", hashset.ToArray());

                //Response.Cookies["aa"].Value = str;
                ErrorMessage.Text = " Sorry You Can Only Select One Venue";
                
            }
        }


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




        public void BindData()
        {

            SqlCommand myCommand = new SqlCommand("SELECT Date FROM VenueSchedule where VenueID = '" + id + "'", con);
            myCommand.CommandType = CommandType.Text;
            // Opens a Database Connection
            con.Open();
            // Execute DataReader
            SqlDataReader dr = myCommand.ExecuteReader();
            // Read DataReader till it reaches the end
            while (dr.Read() == true)
            {
                // Assign the Calendar control dates
                // already contained in the database
                Calendar1.SelectedDates.Add((DateTime)dr["Date"]);
            }

            // Close DataReader
            dr.Close();
            // Close database Connection
            con.Close();

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            TextBox2.Text = Calendar1.SelectedDate.ToShortTimeString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime date;
            date = Calendar1.SelectedDate;
            //if (Calendar1.Visible)
            //{
            //    Calendar1.Visible = false;
            //}
            //else
            //{
            //    Calendar1.Visible = true;
            //}

            BindData();
            con.Open();

            // Set the color of Selected Calendar Cells to Red
            Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Red;
            query = "INSERT INTO VenueSchedule (VenueID,Date,TimeSlot) values ('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlCommand myCommand = new SqlCommand(query, con);


            // myCommand.ExecuteNonQuery();
            //myCommand.CommandType = CommandType.StoredProcedure;
            //myCommand.Parameters.Add(new SqlParameter("@v_DateTime", SqlDbType.DateTime));
            //myCommand.Parameters["@v_DateTime"].Value = selectedDate;

            myCommand.ExecuteNonQuery();
            con.Close();
            Btn_AddToCart.Visible = true;
            //Response.Redirect("productinfo.aspx");

        }

      
    }
}
    