using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int cid;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                ViewState["cid"] = Convert.ToInt32(Request.QueryString.Get("cid"));
                cid = Convert.ToInt32(ViewState["cid"].ToString());
                cn.Open();
                qry = "select * from category where cid=" + cid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtcat_id.Text = dr["cid"].ToString();
                    txtcat_name.Text = dr["cname"].ToString();
                   

                }
                cn.Close();
            }
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            cid = Convert.ToInt32(ViewState["cid"].ToString());
            cn.Open();
            qry = "update category set cname='" + txtcat_name.Text + "' where cid=" + txtcat_id.Text;
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("dispcategory.aspx");
            cn.Close();
        }
    }
}