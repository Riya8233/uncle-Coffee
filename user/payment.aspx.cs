using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        int uid;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["uid"] = Convert.ToInt32(Request.QueryString.Get("uid"));
            uid = Convert.ToInt32(ViewState["uid"].ToString());
            cn.Open();
            txttotal.Text = Session["gtotal"].ToString();
            txtname.Text = Session["name"].ToString();
            txtemail.Text = Session["email"].ToString();
            txtmobile.Text = Session["mobile"].ToString();

            qry = "select * from login where uid=" + uid;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
             
                txtname.Text = dr["name"].ToString();
                txtemail.Text = dr["email"].ToString();
                txtmobile.Text = dr["mobile"].ToString();
                txttotal.Text = Session["gtotal"].ToString();


            }
                cn.Close();
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          
            cn.Open();
            txttotal.Text = Session["gtotal"].ToString();
            qry = "insert into payment  values ('" + txtname.Text + "','" + txtemail.Text + "','" + txtmobile.Text + "','" + txttotal.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();

         
           Response.Redirect(string.Format("ChechOut.aspx?name={0}&email={1}&contact={2}&amount={3}", txtname.Text, txtemail.Text, txtmobile.Text, txttotal.Text));





           
        }
    }
}