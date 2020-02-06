using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
public partial class Pages_Register : System.Web.UI.Page

{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (UserName.Text != "" && Mail.Text != "" && Password.Text != "")
        {
            if (Password.Text == CPassword.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Info values('" + UserName.Text + "','" + Mail.Text + "','" + Password.Text + "','" + District.SelectedItem.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Authenticate.ForeColor = Color.Green;
                    Authenticate.Text = "Regestered Sucessfully!";
                    // Response.Redirect("~/SignIn.aspx");
                }
            }
            else
            {
                Authenticate.ForeColor = Color.Red;
                Authenticate.Text = "Passwords Do Not Match";
            }
        }
        else
        {
            Authenticate.ForeColor = Color.Red;
            Authenticate.Text = "All Fields Are Mandatory";
        }
    }
}