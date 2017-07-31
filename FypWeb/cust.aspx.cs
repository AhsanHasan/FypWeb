using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class cust : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "INSERT INTO Customers values('" + (CustName.Text).ToString() + "','" + (CustAddress.Text).ToString() + "','" + CustDOB.Text + "','" + (CustAccountNo.Text).ToString() + "','" + (CustCNIC.Text).ToString() + "','" + (CustPOBox.Text).ToString() + "','" + (CustCity.Text).ToString() + "','" + (CustStatus.Text).ToString() + "','" + (Pass.Text).ToString() + "','" + (Email.Text).ToString() + "','" + (Un.Text).ToString() + "','" + (Con.Text).ToString() + "')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Connection = conn;
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("cust.aspx");

        }
    }
}