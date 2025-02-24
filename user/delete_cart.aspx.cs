using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm11 : System.Web.UI.Page
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
                qry = "delete from add_to_cart where cart_id=" + cid;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteReader();
                Response.Redirect("view_cart.aspx");



                cn.Close();
            }
        }
    }
}