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
        string s, t, f, entr, ent;
        int CustID;
        int venueID;
        int foodPackageID;
        List<int> entertainerID = new List<int>();
        string[] arr2 = new string[4];
        int row1, row2, row3, row4;
        int orderID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null && Request.Cookies["venues"] != null || Request.Cookies["food"] != null || Request.Cookies["entertainer"] != null)
                {
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
                else if (Request.Cookies["venues"] == null || Request.Cookies["food"] == null || Request.Cookies["entertainer"] == null)
                {
                    Response.Redirect("Category.aspx");
                    
                }
                else
                {
                    Response.Redirect("EventType.aspx");
                }
            }
        }
        DateTime dateTime = DateTime.Now;
        DateTime date;
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

            // Generating Order
            Console.Write(orderID);
            con.Open();
            String query = "INSERT INTO Orders values('" + dateTime + "')";
            SqlCommand comm = new SqlCommand(query, con);
            comm.ExecuteNonQuery();
            con.Close();
            date = dateTime;
            con.Open();
            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "Select OrderID from Orders where OrderDateTime = '" + date + "'";
            orderID = (Int32)cmd3.ExecuteScalar();
            con.Close();

            //Extracting IDs
            try
            {
                if (Request.Cookies["venues"] != null)
                {

                    t = Convert.ToString(Request.Cookies["venues"].Value);
                    string[] strArr1 = t.Split(',');
                    venueID = Convert.ToInt32(strArr1[0]);
                    // inserting Venue Details
                    con.Open();
                      
                    String venueQuery = "INSERT INTO VenueDetails values('" + orderID + "','" + venueID + "')";
                    SqlCommand com = new SqlCommand(venueQuery, con);
                    row1 = com.ExecuteNonQuery();
                    con.Close();
                }


                if (Request.Cookies["food"] != null)
                {
                    f = Convert.ToString(Request.Cookies["food"].Value);
                    string[] strArr2 = f.Split(',');
                    foodPackageID = Convert.ToInt32(strArr2[0]);
                    // inserting Food Details
                    con.Open();
                    String foodQuery = "INSERT INTO FoodDetails values('" + orderID + "','" + foodPackageID + "','" + Support.getFoodCost() + "')";
                    SqlCommand com1 = new SqlCommand(foodQuery, con);
                    row2 = com1.ExecuteNonQuery();
                    con.Close();
                }



                if (Request.Cookies["entertainer"] != null)
                {
                    ent = Convert.ToString(Request.Cookies["entertainer"].Value);
                    string[] strArr5 = ent.Split('|');
                    for (int z = 0; z < strArr5.Length; z++)
                    {
                        entr = Convert.ToString(strArr5[z].ToString());
                        string[] strArr6 = entr.Split(',');

                        //arr2[c] = strArr6[c].ToString();
                        entertainerID.Add(Convert.ToInt32(strArr6[0]));

                    }
                    con.Open();
                    for (int j = 0; j < entertainerID.Count(); j++)
                    {

                        String entertainerQuery = "INSERT INTO EntertainerDetails values('" + orderID + "','" + entertainerID[j] + "')";
                        SqlCommand com2 = new SqlCommand(entertainerQuery, con);
                        row3 = com2.ExecuteNonQuery();

                    }
                    con.Close();

                }
                // Inserting into Place Orders
                con.Open();
                String placeOrderQuery = "INSERT INTO PlaceOrder values('" + CustID + "','" + orderID + "')";
                SqlCommand com3 = new SqlCommand(placeOrderQuery, con);
                row4 = com3.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            if (row1 >= 1 || row2 >= 1 || row3 >= 1 || row4 >= 1)
            {
                //Sending Mail To The Customer
                try
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("syed.khan7007@gmail.com");
                    msg.To.Add(txt_emailaddress.Text);
                    msg.Subject = "Confirmation From OnClickEvents";
                    msg.Body = "Hi Mr/Mrs " + txt_name.Text + " this is to confirm you that your request have been recieved we will get back to you ASAP and the sum of your shopping is RS " + orderID + " Against the OrderID : " + Support.getOrderID() + ". Thanks\n -Team OnClick Event";
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
            }
            else
            {
                orderError.Text = "Sorry Due To Some Error Order Can Not Be Place At The Moment,Go through the procedure again..";
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