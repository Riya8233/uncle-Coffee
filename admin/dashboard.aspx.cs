using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm23 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int cid;
        int pid;
        int uid;
        int blogid;
        int amount;
       
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            cn.Open();
            qry = "select count(*) from category";
            cmd = new SqlCommand(qry, cn);
            int cat = Convert.ToInt32(cmd.ExecuteScalar());
            lblcat.Text = cat.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from product";
            cmd = new SqlCommand(qry, cn);
            int prod = Convert.ToInt32(cmd.ExecuteScalar());
            lblprod.Text = prod.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from add_to_cart";
            cmd = new SqlCommand(qry, cn);
            int cart = Convert.ToInt32(cmd.ExecuteScalar());
            lblcart.Text = cart.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from blog";
            cmd = new SqlCommand(qry, cn);
            int blog = Convert.ToInt32(cmd.ExecuteScalar());
            lblblog.Text = blog.ToString();
            cn.Close();

            cn.Open();
            qry = "select SUM(amount) from payment";
            cmd = new SqlCommand(qry, cn);
            int amount = Convert.ToInt32(cmd.ExecuteScalar());
            lblpayment.Text = amount.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from contact_us";
            cmd = new SqlCommand(qry, cn);
            int message = Convert.ToInt32(cmd.ExecuteScalar());
            lblmsg.Text = message.ToString();
            cn.Close();

            cn.Open();
            qry = "select count(*) from contact_us";
            cmd = new SqlCommand(qry, cn);
            int reviews = Convert.ToInt32(cmd.ExecuteScalar());
            lbltest.Text = message.ToString();
            cn.Close();

        }
    }
}