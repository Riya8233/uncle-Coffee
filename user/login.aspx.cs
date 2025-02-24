using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from login where email='" + txtemailid.Text + "' and password='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                int status = Convert.ToInt32(dr["status"].ToString());
                if (status == 1)
                    Response.Redirect("../admin/dashboard.aspx");
                else
                {
                    Session["uid"] = dr["uid"].ToString();
                    Session["name"] = dr["name"].ToString();
                    Session["email"] = dr["email"].ToString();
                    Session["mobile"] = dr["mobile"].ToString();


                    Response.Redirect("../user/Uhome.aspx");
                }
            }
            else
            {
                Label1.Text = "Please Enter valid data";
            }
            cn.Close();
        }
    }
}