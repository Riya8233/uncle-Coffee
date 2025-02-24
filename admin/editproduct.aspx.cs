using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int pid;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string fname;
                ViewState["pid"] = Convert.ToInt32(Request.QueryString.Get("pid"));
                pid = Convert.ToInt32(ViewState["pid"].ToString());
                cn.Open();
                qry = "select * from product where pid=" + pid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtproduct_id.Text = dr["pid"].ToString();
                    txtcid.Text = dr["cid"].ToString();
                    txtproduct_name.Text = dr["pname"].ToString();
                    fname = dr["pimage"].ToString();
                    Image1.ImageUrl = "../product/" + dr["pimage"].ToString();
                    txtproduct_desc.Text = dr["pdesc"].ToString();
                    txtprice.Text = dr["pprice"].ToString();

                }
                cn.Close();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string fname;
            if (FileUpload1.HasFile)
            {
                fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("../product/" + fname));
                Image1.ImageUrl = "../product/" + fname;

                pid = Convert.ToInt32(ViewState["pid"].ToString());
                cn.Open();
                qry = "update product set cid='" + txtcid.Text + "', pname='" + txtproduct_name.Text + "',  pimage='" + fname + "' , pdesc='" + txtproduct_desc.Text + "', pprice='" + txtprice.Text + "' where pid=" + txtproduct_id.Text;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("dispproduct.aspx");
                cn.Close();
            }
        }
    }
}
