using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class success : System.Web.UI.Page 
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            lblwelcome.Text = "Welcome "+ Session["user"];
            
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        
    }

    void my_button_Click(Object sender,
                           EventArgs e) { 
        
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


}