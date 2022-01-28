using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string gender = string.Empty;
        if(RMale.Checked)
        {
            gender = "Male";
        }else
        {
            gender = "Female";
        }

        string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        try
        {
            con.Open();
            SqlCommand cmd0 = new SqlCommand("SELECT COUNT(*) FROM [dbo].[studregform] WHERE student_id='" + inputteacher_id.Text + "' ", con);
            SqlDataAdapter sda0 = new SqlDataAdapter(cmd0);
            DataTable dt0 = new DataTable();
            sda0.Fill(dt0);
            cmd0.ExecuteNonQuery();
            if (dt0.Rows[0][0].ToString() == "1")
            {
                Response.Write("<script>alert ('Student Number already exist, please double check your student id number')</script> ");

            }
            else
            {
                try
                {//start of check if there same username
                    con.Close();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [dbo].[studregform] WHERE username='" + inputusername.Text + "' ", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    if (dt.Rows[0][0].ToString() == "1")
                    {
                        Response.Write("<script>alert ('Username already exist! please use another username')</script> ");

                    }
                    else
                    {
                        if (inputPassword.Text.Equals(inputCPassword.Text))
                        {//start of the two entry password is same

                            try
                            {//start of insert data
                                con.Close();
                                con.Open();
                                SqlCommand cmd1 = new SqlCommand(@"INSERT INTO [dbo].[teacherregform]
           ([teacher_id]
           ,[username]
           ,[password]
           ,[firstname]
           ,[middlename]
           ,[lastname]
           ,[gender]
           ,[address]
           ,[city]
           ,[state]
           ,[postal]
           ,[country]
           ,[pnumber]
           ,[email])
     VALUES
                            ('" + inputteacher_id.Text + "', '" + inputusername.Text + "', '" + inputPassword.Text + "', '" + inputLastname.Text + "', '" + inputfirstname.Text + "', '" + inputmiddlename.Text + "', '" + gender + "', '" + inputAddress.Text + "', '" + inputCity.Text + "', '" + inputState.Text + "', '" + inputZip.Text + "', '" + inputcountry.Text + "', '" + inputpnumber.Text + "', '" + inputEmail.Text + "')", con);
                                cmd1.ExecuteNonQuery();
                                Response.Write("<script>alert ('Registered Successfully')</script> ");
                                con.Close();
                                inputteacher_id.Text = "";
                                inputusername.Text = "";
                                inputPassword.Text = "";
                                inputLastname.Text = "";
                                inputfirstname.Text = "";
                                inputmiddlename.Text = "";
                                inputAddress.Text = "";
                                inputCity.Text = "";
                                inputState.Text = "";
                                inputZip.Text = "";
                                inputcountry.Text = "";
                                inputpnumber.Text = "";
                                inputEmail.Text = "";
                            }
                            catch (Exception ex)
                            {
                                Response.Write(ex.Message);
                                con.Close();
                            }//end of insert data
                        }
                        else
                        {
                            Response.Write("<script>alert ('Password is not matched')</script> ");
                        }//end of condition if the password is same 
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                    con.Close();
                }//end of try catch if there are same username
            }
        }
        catch
        {
        }






    }

    protected void inputstud_id_TextChanged(object sender, EventArgs e)
    {

    }
}