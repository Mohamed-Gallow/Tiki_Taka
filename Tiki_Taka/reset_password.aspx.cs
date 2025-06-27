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
    public partial class reset_password : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=LAPTOP-O70T98QK;Initial Catalog=Tiki_Taka;Integrated Security=True");
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            conn.Open();
            



            SqlCommand com = new SqlCommand("select COUNT(*) from [dbo].[join_us] where email='" + email.Text + "'", conn);
            int gg = int.Parse(com.ExecuteScalar().ToString());
            if (gg == 1)
            {
                SqlCommand cm = new SqlCommand("update [dbo].[join_us] set password='" + password.Text + "' where email ='" + email.Text + "' ", conn);
                cm.ExecuteNonQuery();
                
                
                Response.Write("<script> alert('Ubdate Success')</script>");
                Response.Redirect("login.aspx");

            }
            else
            {
                Response.Write("<script>alert(' Sorry, Wrong Email! ')</script>");
                email.Text = password.Text = null;
            }

            conn.Close();   


        }
    }
}