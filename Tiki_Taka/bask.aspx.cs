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
    public partial class bask : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-O70T98QK;Initial Catalog=Tiki_Taka;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select name from [dbo].[basket] where id = '" + Request.QueryString["id"] + "'", con);
            SqlCommand cmdd = new SqlCommand("select place from [dbo].[basket] where id = '" + Request.QueryString["id"] + "'", con);
            SqlCommand cmmd = new SqlCommand("select price from [dbo].[basket] where id = '" + Request.QueryString["id"] + "'", con);
            TextBox2.Text = cmd.ExecuteScalar().ToString();
            TextBox3.Text = cmmd.ExecuteScalar().ToString();
            TextBox1.Text = cmdd.ExecuteScalar().ToString();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cm = new SqlCommand("select court_name,date,hour,num_hour  from [dbo].[bask] where court_name='" + TextBox2.Text + "'", con);
            SqlDataReader sdr = cm.ExecuteReader();

            GridView1.DataSource = sdr;

            GridView1.DataBind();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();

            SqlCommand com = new SqlCommand("select COUNT(*) from [dbo].[bask] where hour='" + time.Text + "'And date='" + date.Text + "'", con);
            int gg = int.Parse(com.ExecuteScalar().ToString());
            if (gg >= 1)
            {
                Response.Write("<script> alert('Sorry this time is reseved')</script>");
            }
            else
            {
                SqlCommand res = new SqlCommand("insert into [dbo].[bask] values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + name.Text + "','" + namber.Text + "','" + email.Text + "','" + date.Text + "','" + time.Text + "','" + hour.Text + "')", con);

                res.ExecuteNonQuery();
                name.Text = namber.Text = email.Text = date.Text = hour.Text = null;
                Response.Write("<script> alert('Reservation done')</script>");
            }

        }
    }
}