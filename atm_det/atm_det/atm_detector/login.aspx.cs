using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
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
            string insertqr = "insert into login(user_name,password,type,hint_q,hint_a,status)values(@user_name,@password,@type,@hint_q,@hint_a,@status)";
            cmd = new SqlCommand(insertqr, con);
            cmd.Parameters.AddWithValue("@user_name", user_name.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@type", type.Text);
            cmd.Parameters.AddWithValue("@hint_q", hint_q.Text);
            cmd.Parameters.AddWithValue("@hint_a", hint_a.Text);
            cmd.Parameters.AddWithValue("@status", status.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("login_view.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}