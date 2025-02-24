using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();

        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlDataAdapter adp = new SqlDataAdapter();
        String q;
        String uid;
        int total;
        String q2;
        SqlConnection cn2 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {

                Response.Redirect("login.aspx");


            }
            uid = Session["uid"].ToString();
            cn.Open();
            q2 = "Select * from add_to_cart where uid=" + uid + "";
            cmd = new SqlCommand(q2, cn);
            SqlDataReader dr2 = cmd.ExecuteReader();

            if (dr2.HasRows)
            {
                while (dr2.Read())
                {
                    cn2.Open();
                    q = "Select SUM(total_amt) from add_to_cart where uid=" + uid + "";
                    cmd = new SqlCommand(q, cn2);
                    //txtcatname.Text = "Cakkes";
                    total = Convert.ToInt32(cmd.ExecuteScalar());
                    Lbltotal .Text = "₹" + total.ToString();
                    Session["gtotal"] = total.ToString();
                    cn2.Close();
                }
            }
            else
            {

                lblcart.Text = "Your Cart is Empty";
               Lbltotal.Visible = false;
                Button2.Visible = false;
            }
            cn.Close();

            cn.Open();
            q = "Select * from add_to_cart where uid=" + uid + "";

            cmd = new SqlCommand(q, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["cart_id"] = dr["cart_id"].ToString();


                }

            }

            cn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}