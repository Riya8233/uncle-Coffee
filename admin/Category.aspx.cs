using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "insert into category values('" + txtcat_name.Text + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Category.aspx");

            cn.Close();
        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from Category where cid= " + txtcat_id.Text;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                txtcat_name.Text = dr["cat_name"].ToString();
               
                

            }
            else
            {
                Label1.Text = "data not found.....";
                clear();
            }

            cn.Close();
        }
        void clear()
        {
            txtcat_id.Text = "";
            txtcat_name.Text = "";
           
            

        }
    }
}