﻿using System;
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
        String food;
        List<String> foodList = new List<String>();
        HashSet<String> hashset = new HashSet<string>();
        
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
                cmd.CommandText = "select * from FoodPackages WHERE foodPackage_ID= '" + id + "'";
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
        protected void addToCartBtn_Click(object sender, EventArgs e)
        {    
        }

        protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void btn_AddToCart(object sender, EventArgs e)
        {
            int gc = Convert.ToInt32( guestcount.Text);
            Support.setGuest(gc);
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            // price = Convert.ToInt32(Request.QueryString["price"].ToString());
            // name = Request.QueryString["name"];
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from FoodPackages where foodPackage_ID = '" + id + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ds = new SqlDataAdapter(cmd);
            ds.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                ItemName = dr["Names"].ToString();
                Picture = dr["Pictures"].ToString();
                Price = dr["Price"].ToString();
            }
            con.Close();
            if (Request.Cookies["food"] == null)
            {
                Response.Cookies["food"].Value = id.ToString() + "," + ItemName.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                Response.Cookies["food"].Expires = DateTime.Now.AddDays(1d);
            }
            else
            {
                //Response.Cookies["food"].Value = Request.Cookies["ab"].Value + "|" + ItemName.ToString() + "," + Picture.ToString() + "," + Price.ToString();
                //Response.Cookies["food"].Expires = DateTime.Now.AddDays(1d);
                //food = Response.Cookies["food"].Value;
                //String[] foodArray = food.Split('|');
                //hashset = new HashSet<string>(foodArray);

                //String str = string.Join("|", hashset.ToArray());

                //Response.Cookies["ab"].Value = str;

                ErrorMessage.Text = "Sorry You've Already Picked One Package";
            }

          


        }
        protected void btn_ContinueShopping(object sender, EventArgs e)
        {
            Response.Redirect("entertainer.aspx");
        }
    }
}