using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[studregform] WHERE username='" + user_txtbox.Text + "' AND password='" + pass_txtbox.Text + "' ",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            if (dt.Rows[0][0].ToString()=="1")
            {
                Response.Redirect("~/Dashboard.aspx");
                
            }
            else {
                Response.Write("<script>alert ('Sorry, Wrong Username or Password!')</script> ");
            }
        }
        catch(Exception ex) {
            Response.Write(ex.Message);
        }
    }
}