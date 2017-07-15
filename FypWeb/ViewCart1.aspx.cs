using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class ViewCart1 : System.Web.UI.Page
    {
        string s,s1,s2;
        string t,t1,t2;
      
        string[] arr = new string[4];
        string[] arr1 = new string[3];

        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckOutForm.aspx");
        }

        string[] arr2 = new string[3];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                DataTable dt2 = new DataTable();
                dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Name"), new DataColumn("Address"), new DataColumn("Picture"), new DataColumn("Price") });
                dt1.Columns.AddRange(new DataColumn[3] { new DataColumn("ItemName"), new DataColumn("Picture"), new DataColumn("Price") });
                dt2.Columns.AddRange(new DataColumn[3] { new DataColumn("Name"), new DataColumn("Picture"), new DataColumn("Price") });
                try {
                    if (Request.Cookies["venue"] != null)
                    {
                        s = Convert.ToString(Request.Cookies["venue"].Value);
                        string[] strArr = s.Split('|');
                        for (int i = 0; i < strArr.Length; i++)
                        {
                            t = Convert.ToString(strArr[i].ToString());
                            string[] strArr1 = t.Split(',');
                            for (int j = 0; j < strArr1.Length; j++)
                            {
                                arr[j] = strArr1[j].ToString();
                            }
                            dt.Rows.Add(arr[0].ToString(), arr[1].ToString(), arr[2].ToString(), arr[3].ToString() );
                            // dt1.Rows.Add(arr[0].ToString(), arr[1].ToString(), arr[2].ToString());
                        }
                    }
                }
                catch(IndexOutOfRangeException)
                {
                    // Catch here
                }
                try {
                    if (Request.Cookies["food"] != null)
                    {
                        s1 = Convert.ToString(Request.Cookies["food"].Value);
                        string[] strArr2 = s1.Split('|');
                        for (int k = 0; k < strArr2.Length; k++)
                        {
                            t1 = Convert.ToString(strArr2[k].ToString());
                            string[] strArr3 = t1.Split(',');
                            for (int a = 0; a < strArr3.Length; a++)
                            {
                                arr1[a] = strArr3[a].ToString();
                            }
                            //dt.Rows.Add(arr[0].ToString(), arr[1].ToString(), arr[2].ToString(), arr[3].ToString());
                            dt1.Rows.Add(arr1[0].ToString(), arr1[1].ToString(), arr1[2].ToString());
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {
                    //something goes here
                }
                try {
                    if (Request.Cookies["ac"] != null)
                    {
                        s2 = Convert.ToString(Request.Cookies["ac"].Value);
                        string[] strArr5 = s2.Split('|');
                        for (int z = 0; z < strArr5.Length; z++)
                        {
                            t2 = Convert.ToString(strArr5[z].ToString());
                            string[] strArr6 = t2.Split(',');
                            for (int c = 0; c < strArr6.Length; c++)
                            {
                                arr2[c] = strArr6[c].ToString();
                            }
                            //dt.Rows.Add(arr[0].ToString(), arr[1].ToString(), arr[2].ToString(), arr[3].ToString());
                            dt2.Rows.Add(arr2[0].ToString(), arr2[1].ToString(), arr2[2].ToString());
                        }
                    }
                }
                catch (IndexOutOfRangeException)
                {
                    // something goes here
                }
                d1.DataSource = dt;
                d3.DataSource = dt1;
                d2.DataSource = dt2;
                d1.DataBind();
                d3.DataBind();
                d2.DataBind();
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
           
            HttpCookie mycookie3 = new HttpCookie("venue");
            HttpCookie mycookie1 = new HttpCookie("food");
            HttpCookie mycookie2 = new HttpCookie("ac");
            mycookie3.Expires = DateTime.Now.AddDays(-1d);
            mycookie1.Expires = DateTime.Now.AddDays(-1d);
            mycookie2.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(mycookie1);
            Response.Cookies.Add(mycookie3);
            Response.Cookies.Add(mycookie2);

            Response.Redirect("Login.aspx");
        }
        protected void btn_Proceed(object sender, EventArgs e)
        {
            Response.Redirect("CheckOutForm.aspx");
        }
       
    }

}