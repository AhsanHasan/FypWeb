using System;
using System.Data;
using System.Data.SqlClient;

namespace FypWeb
{
    public partial class AccountSetting : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
       // int a = 5;
        int id;
        
         
       

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BtUpdate_Click(object sender, EventArgs e)
        {
 

            con.Open();

            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Select CustID from Customers where UserName = '" + Session["user"] + "'";
            id = Convert.ToInt32(cmd1.ExecuteScalar());

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Customers set CustName='" + Cname.Text + "',CustDOB='" + Cdob.Text + "',CustCNIC='" + Cnic.Text + "',Email='" + C1.Text + "',Password='" + C2.Text + "',CustAccountNo='" + C3.Text + "',CustAddress='" + C4.Text + "',CustPOBox='" + C6.Text + "' where CustID='" + id + "'";
            cmd.ExecuteNonQuery();

            con.Close();
            Session.RemoveAll();
            

            
        }


    }
}