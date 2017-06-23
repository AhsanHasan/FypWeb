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

        SqlConnection con = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        int id;
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
            if (!IsPostBack)
            {
                //Calendar1.Visible = false;
                BindData();
            }
            Label4.Text = Request.QueryString["id"];
            
                int a = Convert.ToInt32(Label4.Text);
            
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Entertainers WHERE EntertainerID= '" + a + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);
                d1.DataSource = dt;
                d1.DataBind();
                con.Close();
            
           

        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
        public void BindData()
        {

            SqlCommand myCommand = new SqlCommand("SELECT Date FROM EntertainerSchedule",con);
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
            query = "INSERT INTO EntertainerSchedule (EntertainerID,Date,TimeSlot) values ('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlCommand myCommand = new SqlCommand(query, con);


            // myCommand.ExecuteNonQuery();
            //myCommand.CommandType = CommandType.StoredProcedure;
            //myCommand.Parameters.Add(new SqlParameter("@v_DateTime", SqlDbType.DateTime));
            //myCommand.Parameters["@v_DateTime"].Value = selectedDate;

            myCommand.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewCart1.aspx");

        }
        
        protected void btn_AddToCart(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            // price = Convert.ToInt32(Request.QueryString["price"].ToString());
            // name = Request.QueryString["name"];
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
            if (Request.Cookies["ac"] == null)
            {
                Response.Cookies["ac"].Value = Name.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["ac"].Expires = DateTime.Now.AddDays(1d);
            }
            else
            {
                Response.Cookies["ac"].Value = Request.Cookies["ac"].Value + "|" + Name.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["ac"].Expires = DateTime.Now.AddDays(1d);
            }


        }
        protected void btn_ContinueShopping(object sender, EventArgs e)
        {
            Response.Redirect("entertainer.aspx");
        }

    }
}