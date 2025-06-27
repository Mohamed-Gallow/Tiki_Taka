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
    public partial class join_us : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=LAPTOP-O70T98QK;Initial Catalog=Tiki_Taka;Integrated Security=True");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            conn.Open();
           
          



            
            SqlCommand com = new SqlCommand("select COUNT(*) from [dbo].[join_us] where email='" + email.Text + "'", conn);
            int gg = int.Parse(com.ExecuteScalar().ToString());
            if (gg == 1)
            {
                Response.Write("<script>alert(' you are member in website already! ')</script>");
            }
            else
            {
                SqlCommand cm = new SqlCommand("insert into [dbo].[join_us] values('" + fname.Text + "' ,'" + lname.Text + "' ,'" + email.Text + "','" + age.Text + "','" + password.Text + "')", conn);

                cm.ExecuteNonQuery();

                fname.Text = lname.Text = email.Text = age.Text = password.Text = null;
                Response.Write("<script> alert('')</script>");
                Response.Redirect("login.aspx");
            }



            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("insert into [dbo].[contactus] values('" + name.Text + "' ,'" + kemail.Text + "' ,'" + message.Text + "')", conn);

            cm.ExecuteNonQuery();
            Response.Write("<script>alert('Succes')</script>");
            name.Text = kemail.Text = message.Text = null;
            conn.Close();
        }
    }
}