using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();

        string qry;
        int cat_id;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                ViewState["cat_id"] = Convert.ToInt32(Request.QueryString.Get("cat_id"));
                cat_id = Convert.ToInt32(ViewState["cat_id"].ToString());
                cn.Open();
                qry = "delete from category where cat_id=" + cat_id;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteReader();
                Response.Redirect("dispcategory.aspx");



                cn.Close();
            }
        }  
    }
}