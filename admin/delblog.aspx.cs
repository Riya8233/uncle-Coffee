using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        string qry;
        int blogid;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                ViewState["blogid"] = Convert.ToInt32(Request.QueryString.Get("blogid"));
                blogid = Convert.ToInt32(ViewState["blogid"].ToString());
                cn.Open();
                qry = "delete from blog where blogid=" + blogid;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteReader();
                Response.Redirect("dispblog.aspx");



                cn.Close();
            }
        }
    }
}
