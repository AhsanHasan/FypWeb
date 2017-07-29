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
    public partial class Packageinfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
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
        protected void btn_AddToCart(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
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
                ErrorMessage.Text = " Sorry You Can Only Select One Venue";
            }
        }
        protected void btn_ContinueShopping(object sender, EventArgs e)
        {
            Response.Redirect("FPackages.aspx");
        }

        List<String> venueList = new List<String>();
        HashSet<String> hashset = new HashSet<string>();
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
            Response.Redirect("ViewCart1.aspx");

        }

    }

    

}
