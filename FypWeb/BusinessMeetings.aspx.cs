using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BusinessMeetings : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else if(Session["budget"] == null)
        {
            Response.Redirect("success.aspx");
        }
    }
    protected void logout_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}