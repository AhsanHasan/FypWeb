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
        long a = 0;
        float venueCost = 0;
        float foodCost = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["budget"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                a = Convert.ToInt64(Request.QueryString["budget"]);
                venueCost = (a * 40) / 100;
                Session["budget"] = a.ToString();
                string b = Session["budget"].ToString();

                Cart.setBudget(a);
                Cart.setVenueBudget(venueCost);
            }

          }
        
        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}