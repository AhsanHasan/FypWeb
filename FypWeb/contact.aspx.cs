using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=Ahsan-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
    String name;
    String feedback;
    String email;
    int row1;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }



    protected void btn_submit_Click(object sender, EventArgs e)
    {
        name = name_textbox.Text;
        feedback = feedback_textbox.Text;
        email = email_textbox.Text;
        try
        {
            con.Open();
            String query = "Insert into Contact values('" + name + "' , '" + email + "','" + feedback + " ')";
            SqlCommand com = new SqlCommand(query, con);
            row1 = com.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            //Something Goes Here
        }
        if (row1 >= 1)
        {
            response.Text = "Your FeedBack is recieved, We will get back to you soon";
        }
        else
        {
            response.Text = "Something went wrong please try again after a while.";
        }
    }
}