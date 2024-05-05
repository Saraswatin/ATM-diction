using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class atm_details : System.Web.UI.Page
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
            string insertqr = "insert into atm_details(atm_name,atm_no,area_type,bank_id,area_id,status,cc_camera,security)values(@atm_name,@atm_no,@area_type,@bank_id,@area_id,@status,@cc_camera,@security)";
            cmd = new SqlCommand(insertqr, con);
            cmd.Parameters.AddWithValue("@atm_name", atm_name.Text);
            cmd.Parameters.AddWithValue("@atm_no", atm_no.Text);
            cmd.Parameters.AddWithValue("@area_type", area_type.Text);
            cmd.Parameters.AddWithValue("@bank_id", ListBox1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@area_id", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@cc_camera", RadioButtonList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@security", RadioButtonList3.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("atm_details_view.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}