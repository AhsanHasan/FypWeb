﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FypWeb
{
    public partial class emp : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=AHSAN-PC\SQLEXPRESS;Initial Catalog=OnClickEvents;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b3_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "INSERT INTO Employee values('" + (Name.Text).ToString() + "','" + (Dob.Text).ToString() + "','" + Nic.Text + "','" + (Add.Text).ToString() + "','" + (Ba.Text).ToString() + "','" + (Contact.Text).ToString() + "','" + (Email.Text).ToString() + "')";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Connection = conn;
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("emp.aspx");
        }

    }
}