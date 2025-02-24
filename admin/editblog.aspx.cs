using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int blogid;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string fname;
                ViewState["blogid"] = Convert.ToInt32(Request.QueryString.Get("blogid"));
                blogid = Convert.ToInt32(ViewState["blogid"].ToString());
                cn.Open();
                qry = "select * from blog where blogid=" + blogid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtbid.Text = dr["blogid"].ToString();
                    txtbname.Text = dr["bname"].ToString();
                    fname = dr["bimage"].ToString();
                    Image1.ImageUrl = "../blog/" + dr["bimage"].ToString();
                    txtbdesc.Text = dr["bdesc"].ToString();
                   
                    txtdate.Text = dr["bdate"].ToString();

                }
                cn.Close();
            }
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            string fname;
            if (FileUpload1.HasFile)
            {
                fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("../blog/" + fname));
                Image1.ImageUrl = "../blog/" + fname;

                blogid = Convert.ToInt32(ViewState["blogid"].ToString());
                cn.Open();
                qry = "update blog set bname='" + txtbname.Text + "',  bimage='" + fname + "' , bdesc='" + txtbdesc.Text + "' where blogid=" + txtbid.Text;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("dispblog.aspx");
                cn.Close();
            }
        }
    }
}