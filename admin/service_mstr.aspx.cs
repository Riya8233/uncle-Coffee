using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace The_Bunglow_Cafe.admin
{
    public partial class WebForm18 : System.Web.UI.Page
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
            string fname;
            if (FileUpload1.HasFile)
            {
                fname = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Admin/serviceimg/" + fname));
                Image1.ImageUrl = "~/Admin/serviceimg/" + fname;

                cn.Open();
                qry = "insert into service_mstr values ('" + txtser_name.Text + "','" + fname + "','" + txtser_desc.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Dispservice.aspx");
                cn.Close();
            }
        }
    }
}