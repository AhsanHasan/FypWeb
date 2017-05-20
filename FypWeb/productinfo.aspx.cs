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
        // string name;
        string Name, Price, Address, Picture;
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
        protected void btn_AddToCart (object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
           // price = Convert.ToInt32(Request.QueryString["price"].ToString());
            // name = Request.QueryString["name"];
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
            if(Request.Cookies["aa"] == null)
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
        protected void btn_ContinueShopping (object sender, EventArgs e)
        {
            Response.Redirect("Foods.aspx");
        }
    }
}