using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm19 : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        int ser_id;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string fname;
                ViewState["ser_id"] = Convert.ToInt32(Request.QueryString.Get("ser_id"));
                ser_id = Convert.ToInt32(ViewState["ser_id"].ToString());
                cn.Open();
                qry = "select * from service_mstr where ser_id=" + ser_id;
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txtser_id.Text = dr["ser_id"].ToString();
                    txtser_name.Text = dr["name"].ToString();
                  
                    fname = dr["serviceimg"].ToString();
                    Image1.ImageUrl = "../serviceimg/" + dr["serviceimg"].ToString();
                    txtser_desc.Text = dr["ser_desc"].ToString();

                }
                cn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string fname;
            if (FileUpload1.HasFile)
            {
                fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/admin/serviceimg/" + fname));
                Image1.ImageUrl = "~/admin/serviceimg/" + fname;

                ser_id = Convert.ToInt32(ViewState["ser_id"].ToString());
                cn.Open();
                qry = "update service_mstr set ser_name='" + txtser_name.Text + "',  ser_image='" + fname + "' , ser_desc='" + txtser_desc.Text + "' where ser_id=" + txtser_id.Text;
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("dispservice.aspx");
                cn.Close();
            }
        }
    }
}