using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_details1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString11"].ConnectionString);
            con.Open();
            string insertqr = "insert into user_details(user_name,address,contact_no,email_id,city,state)values(@user_name,@address,@contact_no,@email_id,@city,@state)";
            cmd = new SqlCommand(insertqr, con);
            cmd.Parameters.AddWithValue("@user_name", user_name.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@contact_no", contact_no.Text);
            cmd.Parameters.AddWithValue("@email_id", email_id.Text);
            cmd.Parameters.AddWithValue("@city", city.Text);
            cmd.Parameters.AddWithValue("@state", state.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd2;
            string qry = "insert into login(user_name,password)values(@user_name,@password)";
            cmd2 = new SqlCommand(qry,con);
            cmd2.Parameters.AddWithValue("@user_name", user_name.Text);
            cmd2.Parameters.AddWithValue("@password", contact_no.Text);
            cmd2.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Registered successfully\nUser name is:" + user_name.Text + " and password is:" + contact_no.Text;
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}