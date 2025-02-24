using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int cid;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string fname;
                ViewState["cid"] = Convert.ToInt32(Request.QueryString.Get("cid"));
                cid = Convert.ToInt32(ViewState["cid"].ToString());
                cn.Open();
                qry = "select * from team where cid=" + cid;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txttid.Text = dr["cid"].ToString();
                    txttname.Text = dr["cname"].ToString();
                    txtpost.Text = dr["cpost"].ToString();
                    fname = dr["cimage"].ToString();
                    Image1.ImageUrl = "../chef/" + dr["cimage"].ToString();
                    txtchefdesc.Text = dr["cdesc"].ToString();

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
                FileUpload1.SaveAs(Server.MapPath("../chef/" + fname));
                Image1.ImageUrl = "../chef/" + fname;

                cid = Convert.ToInt32(ViewState["cid"].ToString());
                cn.Open();
                qry = "update team set cname='" + txttname.Text + "', cpost='" + txtpost.Text + "',  cimage='" + fname + "' , cdesc='" + txtchefdesc.Text + "' where cid=" + txttid.Text;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("dispteam.aspx");
                cn.Close();
            }
        }
    }
}

       