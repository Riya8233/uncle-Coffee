using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fname;
            if (FileUpload2.HasFile)
            {
                fname = FileUpload2.FileName;
                FileUpload2.SaveAs(Server.MapPath("../blog/" + fname));
                Image2.ImageUrl = "../blog/" + fname;

                cn.Open();
                qry = "insert into blog values ('"+ txtbid.Text +"','" + txtb_name.Text + "','" + fname + "','" + txtb_desc.Text + "','" + txtdate.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Dispblog.aspx");
                cn.Close();
            }
        }
    }
}