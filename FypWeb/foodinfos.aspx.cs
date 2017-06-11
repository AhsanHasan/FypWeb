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
    public partial class foodinfos : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        int id;
        int price;
        string name;
        string ItemName, Picture, Price;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                price = Convert.ToInt32(Request.QueryString["price"].ToString());
                name = Request.QueryString["name"];
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from FoodItems WHERE FoodItemID= '" + id + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);
                d1.DataSource = dt;
                d1.DataBind();
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
        protected void addToCartBtn_Click(object sender, EventArgs e)
        {    
        }

        protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void btn_AddToCart(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            // price = Convert.ToInt32(Request.QueryString["price"].ToString());
            // name = Request.QueryString["name"];
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from FoodItems where FoodItemID = '" + id + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            ds.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                ItemName = dr["ItemName"].ToString();
                Picture = dr["Picture"].ToString();
                Price = dr["Price"].ToString();
            }
            con.Close();
            if (Request.Cookies["ab"] == null)
            {
                Response.Cookies["ab"].Value = ItemName.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["ab"].Expires = DateTime.Now.AddDays(1d);
            }
            else
            {
                Response.Cookies["ab"].Value = Request.Cookies["ab"].Value + "|" + ItemName.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["ab"].Expires = DateTime.Now.AddDays(1d);
            }


        }
        protected void btn_ContinueShopping(object sender, EventArgs e)
        {
            Response.Redirect("Foods.aspx");
        }
    }
}