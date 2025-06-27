using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Tiki_Taka
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=LAPTOP-O70T98QK;Initial Catalog=Tiki_Taka;Integrated Security=True");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand com = new SqlCommand("select COUNT(*) from [dbo].[join_us] where email='" + email.Text + "' and password='" + password.Text + "'", conn);
            int gg = int.Parse(com.ExecuteScalar().ToString());
            if (gg == 1)
            {
                Response.Write("<script>alert(' sign up successfully ')</script>");
                Response.Redirect("defult.aspx");
            }
            else
            {
                Response.Write("<script>alert(' your username or password invalid')</script>");
                email.Text = "";
                password.Text = "";
                
            }
            conn.Close();
        }
    }
}