using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FypWeb
{
    public partial class CheckOutForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        String s, t;
        int CustID;
        String venueName;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null && Session["budget"] != null && Request.Cookies["aa"] != null || Request.Cookies["ab"] != null || Request.Cookies["ac"] != null)
                {
                    //if (RadioButtonCC.Checked == true)
                    //{
                    //    lblCC.Visible = true;
                    //    txt_cardnum.Visible = true;
                    //}
                    //else { 
                    //     lblCC.Visible = false;
                    //     txt_cardnum.Visible = false;
                    //    }
                    

                    con.Open();
                    string query = "Select * from Customers where UserName ='" + Session["user"] + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        txt_name.Text = reader["CustName"].ToString();
                        txt_phonenumber.Text = reader["Contact"].ToString();
                        txt_address.Text = reader["CustAddress"].ToString();
                        txt_cardnum.Text = reader["CustAccountNo"].ToString();
                        txt_city.Text = reader["CustCity"].ToString();
                        txt_emailaddress.Text = reader["Email"].ToString();
                        txt_postalcode.Text = reader["CustPOBox"].ToString();
                        Cnic.Text = reader["CustCNIC"].ToString();

                    }


                    con.Close();

                }
                else if(Session["user"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else if (Session["budget"] == null)
                {
                    Response.Redirect("success.aspx");
                }
                else if (Request.Cookies["aa"] == null || Request.Cookies["ab"] == null || Request.Cookies["ac"] == null)
                {
                    Response.Redirect("Category.aspx");
                    
                }
                else
                {
                    Response.Redirect("EventType.aspx");
                }
            }
        }
        String dateTime = DateTime.Now.ToString("h:mm:ss tt");
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd2 = con.CreateCommand();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Select CustID from Customers where UserName = '" + Session["user"] + "'";
            CustID = (Int32)cmd1.ExecuteScalar();

            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "update Customers set CustName='" + txt_name.Text + "',CustCNIC='" + Cnic.Text + "',Email='" + txt_emailaddress.Text + "',CustAccountNo='" + txt_cardnum.Text + "',CustAddress='" + txt_address.Text + "',CustPOBox='" + txt_postalcode.Text + "' where CustID=" + CustID + "";
            cmd2.ExecuteNonQuery();

            con.Close();
            try
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("syed.khan7007@gmail.com");
                msg.To.Add(txt_emailaddress.Text);
                msg.Subject = "Confirmation From OnClickEvents";
                msg.Body = "Hi Mr/Mrs " + txt_name.Text + " this is to confirm you that your request have been recieved we will get back to you ASAP and the sum of your shopping is RS " + Support. getTotalCost() +" . Thanks\n -Team OnClick Event";
                SmtpClient sc = new SmtpClient("smtp.gmail.com");
                sc.Port = 587;
                sc.Credentials = new NetworkCredential("syed.khan7007@gmail.com", "ahsan_123");
                sc.EnableSsl = true;
                sc.Send(msg);
                Response.Write("mail send");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            // Inserting Order To Database
            try
            {
                if (Request.Cookies["aa"] != null)
                {
                    s = Convert.ToString(Request.Cookies["aa"].Value);
                    string[] strArr = s.Split('|');
                    for (int i = 0; i < strArr.Length; i++)
                    {
                        t = Convert.ToString(strArr[i].ToString());
                        string[] strArr1 = t.Split(',');
  
                            venueName = strArr1[0];

                        con.Open();
                        String query = "INSERT INTO Orders values('" + CustID + "','" + dateTime + "','" + venueName + "','" + " " + "','" + " " + "')";
                        SqlCommand comm = new SqlCommand(query, con);
                        comm.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }


            catch (IndexOutOfRangeException)
            {
                //something goes here
            }
        }
        protected void logout_click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            HttpCookie mycookie = new HttpCookie("aa");
            HttpCookie mycookie1 = new HttpCookie("ab");
            HttpCookie mycookie2 = new HttpCookie("ac");
            mycookie.Expires = DateTime.Now.AddDays(-1);
            mycookie1.Expires = DateTime.Now.AddDays(-1d);
            mycookie2.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(mycookie1);
            Response.Cookies.Add(mycookie);
            Response.Cookies.Add(mycookie2);

            Response.Redirect("Login.aspx");
        }

        protected void OnCheckChanged(object sender, EventArgs e)
        {
            
                lblCC.Visible = false;
                txt_cardnum.Visible = false;
            
        }

        protected void OnCheckChanged1(object sender, EventArgs e)
        {
            lblCC.Visible = true;
            txt_cardnum.Visible = true;

        }
    }
}