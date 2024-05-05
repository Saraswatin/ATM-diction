using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class snocash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        DropDownList2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList2.Visible = false;
        Panel1.Visible = true;
    }
}