using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        int uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {

                Response.Redirect("login.aspx");


            }
            else
            {
                cn.Open();
                ViewState["uid"] = Convert.ToInt32(Request.QueryString.Get("uid"));
                uid = Convert.ToInt32(ViewState["uid"].ToString());
                Label1.Text = Session["name"].ToString();
                qry = "select * from login where uid=" + uid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();

                    Label1.Text = dr["name"].ToString();
                }
                cn.Close();
            }
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //txtname.Text = Session["name"].ToString();
            Label1.Text = Session["name"].ToString();
            cn.Open();
            qry = "insert into testimonial values('" + Label1.Text + "','" + txtreview.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("testimonial.aspx");

            cn.Close();
        }
    }
}