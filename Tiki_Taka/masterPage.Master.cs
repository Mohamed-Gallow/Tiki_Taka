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
    public partial class masterPage : System.Web.UI.MasterPage
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=LAPTOP-O70T98QK;Initial Catalog=Tiki_Taka;Integrated Security=True");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("insert into [dbo].[contactus] values('" + Name.Text + "' ,'" + your_email.Text + "' ,'" + message.Text + "')" ,conn);
            
            cm.ExecuteNonQuery();
            Response.Write("<script>alert('Succes')</script>");
            Name.Text = your_email.Text = message.Text = null;
            conn.Close();   
        }

    }
}