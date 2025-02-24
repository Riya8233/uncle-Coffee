using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace The_Bunglow_Cafe.user
{
    public partial class WebForm16 : System.Web.UI.Page
    {

		SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Ahome.mdf;Integrated Security=True");
		SqlCommand cmd = new SqlCommand();
		string qry;
		SqlDataReader dr;
		int id;

		public string orderId;
		public string amount;
		public string contact;
		public string name;
		public string product;
		public string email;

		protected void Page_Load(object sender, EventArgs e)
        {
			//id = Convert.ToInt32(Request.QueryString["id"]).ToString();
			cn.Open();
			qry = "select * from payment where id='" + id + "'";
			cmd = new SqlCommand(qry, cn);
			dr = cmd.ExecuteReader();
			if (dr.HasRows)
			{
				dr.Read();
				amount = (Convert.ToInt32(Request.QueryString["amount"]) * 100).ToString();
				contact = Request.QueryString["contact"].ToString();
				name = Request.QueryString["name"].ToString();
				email = Request.QueryString["email"].ToString();


				Dictionary<string, object> input = new Dictionary<string, object>();
				input.Add("amount", amount);
				input.Add("currency", "INR");
				input.Add("payment_capture", 1000);

				string key = "rzp_test_eU2KoH9vbiAKAU";
				string secret = "WZLBHfJMDpDiOO9cHMHdL2yp";

				RazorpayClient client = new RazorpayClient(key, secret);

				Razorpay.Api.Order order = client.Order.Create(input);
				orderId = order["id"].ToString();
				cn.Close();
			}
		}
    }
}