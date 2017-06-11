using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace FypWeb
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //using (SqlConnection conn = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True"))
            //{

            //    conn.Open();
            //    string query = "INSERT INTO Customer  values('" + (C1.Text).ToString() + "', '" +" " + C3.Text + "','" + " " +" "+" "  + (C7.Text).ToString() + "','" + (Email.Text).ToString() + "','" + (Pwd.Text).ToString() + "')";
            //    SqlCommand comm = new SqlCommand(query, conn);
            //    comm.Connection = conn;
            //    comm.ExecuteNonQuery();
            //};

            //Response.Redirect("Login.aspx");
            if (Page.IsValid)
            {
                string name = C1.Text.ToString();
                string dob = C3.Text.ToString();
                string city = C7.Text.ToString();
                string email = Email.Text.ToString();
                string pass = Pwd.Text.ToString();
                string un = username.Text.ToString();

                bool exsist = false;
                con.Open();
                //using (SqlCommand cmd = new SqlCommand("Select count(*) from Customers where UserName = '" + un + "'",con))
                String query1 = "Select count(*) from Customers where UserName = '" + un + "'";
                SqlCommand cmd = new SqlCommand(query1, con);

                exsist = (int)cmd.ExecuteScalar() > 0;

                if (exsist)
                {
                    lblerror.Text = "UserName Already Exsist";
                    con.Close();

                }
                else
                {
                    FirstSignUp(name, dob, city, pass, email, un);
                    //String msg = "";

                    ////bool check = ConnectDB();           // Opens the Connection to Insert The new User


                    ////DateTime dob = DateTime.ParseExact(cdob, "dd/mm/yyyy", null);
                    //String query = "INSERT INTO Customers values('" + name + "','" + " " + "','" + dob + "','" + " " + "','" + " " + "','" + " " + "','" + city + "','" + " " + "','" + pass + "','" + email + "','" + username + "','" + " " + "')";
                    //SqlCommand comm = new SqlCommand(query, con);
                    //comm.ExecuteNonQuery();
                    //con.Close();
                    Response.Redirect("Login.aspx");
                }
            }


        }

        public void FirstSignUp(string cname, string cdob, string ccity, string cpass, string cemail, string cusername)
        {
            String msg = "";

            //bool check = ConnectDB();           // Opens the Connection to Insert The new User


            //DateTime dob = DateTime.ParseExact(cdob, "dd/mm/yyyy", null);
            string query = "INSERT INTO Customers values('" + cname + "','" + " " + "','" + cdob + "','" + " " + "','" + " " + "','" + " " + "','" + ccity + "','" + " " + "','" + cpass + "','" + cemail + "','" + cusername + "','" + " " + "')";
            SqlCommand comm = new SqlCommand(query, con);
            comm.ExecuteNonQuery();
            con.Close();

        }


    }
}
            
    
