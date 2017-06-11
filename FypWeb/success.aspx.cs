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
        Response.Redirect("Login.aspx");
    }
    

}