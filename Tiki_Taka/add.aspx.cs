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
    public partial class add : System.Web.UI.Page
    {
         SqlConnection conn;


        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=LAPTOP-O70T98QK;Initial Catalog=Tiki_Taka;Integrated Security=True");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("insert into [dbo].[add] values ('" + select.Text + "' , '" + court_name.Text + "' , '" + place.Text + "' ,'" + price.Text + "' ,'" + name.Text+ "' ,  '" + email.Text + "')", conn);
            cm.ExecuteNonQuery();
            select.Text = court_name.Text = place.Text = price.Text  = null;
            Response.Write("<script> alert('Add complete , We will send you')</script>");
            conn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cm = new SqlCommand("select * from [dbo].[add] where email='" + email.Text + "'", conn);
            SqlDataReader sdr = cm.ExecuteReader();

            GridView1.DataSource = sdr;

            GridView1.DataBind();

            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmm = new SqlCommand("delete  from [dbo].[add] where email='" + email.Text + "'", conn );
            cmm.ExecuteNonQuery();
            select.Text = court_name.Text = place.Text = price.Text = null;
            Response.Write("<script> alert('Delete complete')</script>");
            conn.Close();

        }
    }



       /* protected void Button1_Click(object sender, EventArgs e)
        {
             conn.Open();
             SqlCommand cm = new SqlCommand("insert into [dbo].[add] values ('" + select.Text + "' , '" + court_name.Text + "' , '" + place.Text + "' ,'" + FileUpload1.T + "' , '" + price.Text + "' , '" + email.Text + "')", conn);
             cm.ExecuteNonQuery();
             select.Text = court_name.Text = place.Text = price.Text = email.Text = null ;
             Response.Write("<script> alert('add complete')</script>");
             conn.Close();

        }*/
    
}