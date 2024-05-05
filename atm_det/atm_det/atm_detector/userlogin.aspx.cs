using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString11"].ConnectionString);
        con.Open();
        string qry = "select count(*) from login where user_name='" + tbuname.Text + "'";
        cmd = new SqlCommand(qry, con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            SqlCommand cmd1;
            string qry1 = "select password from login where user_name='" + tbuname.Text + "'";
            cmd1 = new SqlCommand(qry1, con);
            string pwd = cmd1.ExecuteScalar().ToString().Replace(" ", "");
            con.Close();
            if (pwd == tbpwd.Text)
            {
                Session["new"] = tbuname.Text;
                Label1.Visible = false;
                Response.Redirect("userhome.aspx");
            }
            else
            {
                //Response.Redirect("");
                Label1.Visible = true;
                Label1.Text = "password is not correct or user blocked";
                //tbuname.Text = "";
                //tbpwd.Text = "";
            }
        }
        else
        {
            //
            Label1.Visible = true;
            Label1.Text = "User name is not present or not active";
            //tbuname.Text = "";
            //tbpwd.Text = "";
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainhome.aspx");
    }
}