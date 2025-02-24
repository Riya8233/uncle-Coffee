using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int qty;
        int tamt;
        int price;
        int cart_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart_id = Convert.ToInt32(Request.QueryString.Get("cart_id"));
            cn.Open();
            qry = "select * from add_to_cart where cart_id='" + cart_id + "'";
            cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    
                    qty = Convert.ToInt32(dr["qty"]) - 1;
                    price = Convert.ToInt32(dr["price"]);
                    tamt = Convert.ToInt32(price) * (qty);

                }

            }
            cn.Close();
            if (qty >= 1)
            {
                cn.Open();
                qry = "update add_to_cart set qty= " + qty + ",total_amt=" + tamt + " where cart_id=" + cart_id + "";

                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
               
            }
            Response.Redirect("view_cart.aspx");
        }
    }
}