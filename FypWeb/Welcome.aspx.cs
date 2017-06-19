using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["CheckCookie"] == null)
        {
            if (string.IsNullOrWhiteSpace(Request.QueryString["cookie"]))
            {
                Response.Cookies["CheckCookie"].Value = "Yes";
                Response.Redirect(Request.Url.ToString() + "?cookie=created", true);
            }
            else if (Request.QueryString["cookie"].Equals("created"))
            {
                //errorMessageLabel.Text = "Cookies enabled?: No";
                //System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=""JavaScript"">alert("Hello this is an Alert")</SCRIPT>");
                Response.Write("<script>alert('This website uses Cookies, Kindly enable Cookies in your browser settings for shopping!!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Cookies will be used for this site...');</script>");
        }
    }
    
    //private bool IsCookieDisabled()
    //{
    //    string currentUrl = Request.RawUrl;

    //    if (Request.QueryString["cookieCheck"] == null)
    //    {
    //        try
    //        {
    //            HttpCookie c = new HttpCookie("SupportCookies", "true");
    //            Response.Cookies.Add(c);

    //            if (currentUrl.IndexOf("?") > 0)
    //                currentUrl = currentUrl + "&cookieCheck=true";
    //            else
    //                currentUrl = currentUrl + "?cookieCheck=true";

    //            Response.Redirect(currentUrl);
    //        }
    //        catch
    //        {
    //        }
    //    }

    //    if (!Request.Browser.Cookies || Request.Cookies["SupportCookies"] == null)
    //        return true;

    //    return false;
    //}


    protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }


    //protected void GoButton_Click(object sender, EventArgs e)
    //{

    //    SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");

    //    string query = "Select count(*) from dbo.Customers where CustName='" + l1.Text + "'and Password='" + l2.Text + "'";
    //    SqlCommand cmd = new SqlCommand(query, con);
    //    string output = cmd.ExecuteScalar().ToString();

    //    if (output == "1")
    //    {
    //        Session["user"] = l1.Text;
    //        Response.Redirect("success.aspx");

    //    }


    //}

    protected void login_btn_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Request.Cookies["CheckCookie"] != null)
            {

                // SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
                con.Open();
                string query = "Select count(*) from dbo.Customers where UserName='" + l1.Text + "'and Password='" + l2.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                string output = cmd.ExecuteScalar().ToString();

                if (output == "1")
                {
                    Session["user"] = l1.Text;
                    Response.Redirect("success.aspx");

                }
                con.Close();
            }
        }
        else
        {
            Response.Write("<script>alert('This website uses Cookies, Kindly enable Cookies in your browser settings for shopping!!');</script>");


        }
    }
}
