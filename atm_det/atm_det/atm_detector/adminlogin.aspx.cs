using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        string uname = TextBoxuname.Text;
        string pwd = TextBoxpwd.Text;
        if (uname == "admin" && pwd == "admin123")
        {
            Response.Redirect("admin_home.aspx");
        }
        else
        {
            TextBoxuname.Text = "";
            TextBoxpwd.Text = "";
            Label1.Visible = true;
            Label1.Text = "Username or Password is incorrect";
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainhome.aspx");
    }
}