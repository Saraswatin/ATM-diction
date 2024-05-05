using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class bank_details : System.Web.UI.Page
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
            string insertqr = "insert into bank_details(bank_name,bank_main_branchs,contact_no,branch_manager)values(@bank_name,@bank_main_branchs,@contact_no,@branch_manager)";
            cmd = new SqlCommand(insertqr, con);
            cmd.Parameters.AddWithValue("@bank_name", bank_name.Text);
            cmd.Parameters.AddWithValue("@bank_main_branchs", bank_main_branch.Text);
            cmd.Parameters.AddWithValue("@contact_no", contact_no.Text);
            cmd.Parameters.AddWithValue("@branch_manager", branch_manager.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("bank_details_view.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}