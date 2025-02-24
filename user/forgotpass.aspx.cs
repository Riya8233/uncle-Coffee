using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
namespace The_Bunglow_Cafe.user
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
            qry = "select * from login where email='" + txtemailid.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                string password = dr["password"].ToString();
                cn.Close();
                MailMessage mail = new MailMessage();
                string mailid = txtemailid.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("thebungalowcafe123@gmail.com");
                mail.Subject = "forgot password";
                string Body = "<h1>Your password is :" + password + "</h1>";
                mail.Body = Body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("thebungalowcafe123@gmail.com", "DK@12345");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            else
            {
                Label1.Text = "Enter valid email id";
            }
        }
    }
}