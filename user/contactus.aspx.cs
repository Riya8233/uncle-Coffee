using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm5 : System.Web.UI.Page
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
                txtcname.Text = Session["name"].ToString();
                txtcemail.Text = Session["email"].ToString();
                qry = "select * from login where uid=" + uid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();

                    txtcname.Text = dr["name"].ToString();
                    txtcemail.Text = dr["email"].ToString();
                }

                cn.Close();
            }
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into contact_us values('" + txtcname.Text + "','" + txtcemail.Text + "', '" + txtcmsg.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Label1.Text = "Thanks For Contacting Us";

            cn.Close();
        }
    }
   }
