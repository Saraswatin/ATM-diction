using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class area_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString11"].ConnectionString);
            con.Open();
            string insertqr = "insert into area_details(area_name,land_mark)values(@area_name,@land_mark)";
            cmd = new SqlCommand(insertqr, con);
            cmd.Parameters.AddWithValue("@area_name", TextBoxareaname.Text);
            cmd.Parameters.AddWithValue("@land_mark", TextBoxlandmark.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("area_details_view.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}