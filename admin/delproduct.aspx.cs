using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        string qry;
        int product_id;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                ViewState["pid"] = Convert.ToInt32(Request.QueryString.Get("pid"));
                product_id = Convert.ToInt32(ViewState["pid"].ToString());
                cn.Open();
                qry = "delete from product where pid=" + product_id;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteReader();
                Response.Redirect("dispproduct.aspx");



                cn.Close();
            }
        }
    }
}