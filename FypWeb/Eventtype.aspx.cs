using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FypWeb.App_Code;
namespace FypWeb
{
    public partial class Venue : System.Web.UI.Page
    {
        long  budget = 0;
        float venueCost = 0;
        float foodCost = 0;
        long guest = 0;
        float entertainerCost = 0;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                budget = Convert.ToInt64(Request.Form["TextBox1"]);
                guest = Convert.ToInt64(Request.Form["TextBox2"]);
                //budget = Convert.ToInt64(Request.QueryString["budget"]);
                //guest = Convert.ToInt64(Request.QueryString["guest"]);
                venueCost = (budget * 40) / 100;
                foodCost = (budget * 25) / 100;
                entertainerCost = (budget * 25) / 100;

                Session["budget"] = budget.ToString();
                Session["guest"] = guest.ToString();
                string b = Session["budget"].ToString();

                Cart.setBudget(budget);
                Cart.setVenueBudget(venueCost);
                Cart.setFoodBudget(foodCost);
                Cart.setEntertainerBudget(entertainerCost);
            }

          }
        
        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}