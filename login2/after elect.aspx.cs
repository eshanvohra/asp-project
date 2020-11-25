using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace login2
{
    public partial class after_elect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s;
            string stateselected = Request.QueryString["state"];
            //string cus_id = Request.QueryString["custid"];
            string cus_id = "12121212";
            Label5.Text = stateselected;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
               
                cmd.CommandText = "Select bill_amount from showbill where Customer_ID=@nam";
                cmd.Parameters.AddWithValue("@nam", cus_id);
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    Label6.Text = r.GetString(0);
                }
             


            }
            catch
            {

            }
            finally
            {

            }
        }
    }
}