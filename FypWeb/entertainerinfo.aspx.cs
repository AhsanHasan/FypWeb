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
    public partial class entertainerinfo : System.Web.UI.Page
    {
        //string selectedDate;
        string query;
        string Name, Picture, Price;
        String entertainers;
        int a;
        HashSet<String> hashset = new HashSet<string>();

        SqlConnection con = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
          
            else
            {
                
                // Label4.Text = Request.QueryString["id"];

                // a = Convert.ToInt32(Label4.Text);

                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Entertainers WHERE EntertainerID= '" + id + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);
                d1.DataSource = dt;
                d1.DataBind();
                con.Close();
                BindData();



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
        public void BindData()
        {

            SqlCommand myCommand = new SqlCommand("SELECT Date FROM EntertainerSchedule where EntertainerID= '" + id + "'", con);
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
            try {
                con.Open();

                // Set the color of Selected Calendar Cells to Red
                Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Red;
                query = "INSERT INTO EntertainerSchedule (EntertainerID,Date,TimeSlot) values ('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
                SqlCommand myCommand = new SqlCommand(query, con);


                // myCommand.ExecuteNonQuery();
                //myCommand.CommandType = CommandType.StoredProcedure;
                //myCommand.Parameters.Add(new SqlParameter("@v_DateTime", SqlDbType.DateTime));
                //myCommand.Parameters["@v_DateTime"].Value = selectedDate;

                myCommand.ExecuteNonQuery();
                con.Close();
            }
            catch(Exception ex)
            {
                //Something goes here
            }
            Btn_AddToCart.Visible = true;

        }
        
        protected void btn_AddToCart(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            // price = Convert.ToInt32(Request.QueryString["price"].ToString());
            // name = Request.QueryString["name"];
            try {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Entertainers where EntertainerID = '" + id + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    Name = dr["Name"].ToString();
                    Picture = dr["Picture"].ToString();
                    Price = dr["Price"].ToString();
                }
                con.Close();
            }
            catch(Exception ex)
            {
                //Something goes here
            }
            if (Request.Cookies["entertainer"] == null)
            {
                Response.Cookies["entertainer"].Value = id.ToString() + "," + Name.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["entertainer"].Expires = DateTime.Now.AddDays(1d);
            }
            else
            {
                Response.Cookies["entertainer"].Value = Request.Cookies["entertainer"].Value + "|" + id.ToString() + "," + Name.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["entertainer"].Expires = DateTime.Now.AddDays(1d);
                entertainers = Response.Cookies["entertainer"].Value;
                String[] entertainerArray = entertainers.Split('|');
                hashset = new HashSet<string>(entertainerArray);
                    
                String str = string.Join("|", hashset.ToArray());

                Response.Cookies["entertainer"].Value = str;
            }


        }
        protected void btn_ContinueShopping(object sender, EventArgs e)
        {
            Response.Redirect("entertainer.aspx");
        }

    }
}