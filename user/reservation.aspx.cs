using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm2 : System.Web.UI.Page
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
                txtname.Text = Session["name"].ToString();
                txtemail.Text = Session["email"].ToString();
                qry = "select * from login where uid=" + uid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();

                    txtname.Text = dr["name"].ToString();
                    txtemail.Text = dr["email"].ToString();
                }
                cn.Close();
            }
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into reservation values('" + txtname.Text + "','" + txtemail.Text + "','" + txtmobno.Text + "','" + txtperson.Text + "','" + txtdate.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Label1.Text = "Your Table Is Reserved ";

            cn.Close();
        }
    }
}