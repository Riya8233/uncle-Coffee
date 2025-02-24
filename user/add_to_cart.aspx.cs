using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int pid;
        SqlDataReader dr;
        string pname;
        string image;
        int qty;
        int price;
        int tamt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {

                Response.Redirect("login.aspx");


            }
            if (!IsPostBack)
            {


                ViewState["pid"] = Convert.ToInt32(Request.QueryString.Get("pid"));
                pid = Convert.ToInt32(ViewState["pid"].ToString());
                cn.Open();
                qry = "select * from product where pid=" + pid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();

                    pname= dr["pname"].ToString();
                    image = dr["pimage"].ToString();
                    qty = 1;
                    price =Convert.ToInt32 (dr["pprice"].ToString());
                    tamt= qty * price;


                }
                cn.Close();

                cn.Open();

                qry = "insert into add_to_cart values('"+ Session["uid"].ToString() +"','" + pid + "','" + pname + "','" + image + "','" + qty + "','" + price + "','" + tamt + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("view_cart.aspx");

                cn.Close();
            }
          
        }
    }
}