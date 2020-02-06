using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (UName.Text != "" && PWord.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select Password from Info where UserName='" + UName.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                try
                {
                    string pass = cmd.ExecuteScalar().ToString();
                    Verify.ForeColor = Color.Green;
                    if (PWord.Text == pass)
                    {
                        Session["new"] = UName.Text;
                        //Verify.Text = "Welcome " + UName.Text;
                        Response.Redirect("Welcome.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect Password')</script>");
                    }
                }
                catch (NullReferenceException e1)
                {
                    Response.Write("<script>alert('Invalid user')</script>");
                }
                // Response.Write(pass);

            }

        }
        else
        {
            Verify.ForeColor = Color.Red;
            Verify.Text = "All Fields Are Mandatory";
        }
    }
}