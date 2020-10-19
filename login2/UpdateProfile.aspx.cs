using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace login2
{
    public partial class UpdateProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.QueryString["custid"];
            
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandText = "Update cust_profile set Mobile_Number=@mob, Email=@mail," +
                    "Address=@address where Cust_Id=@nam;";
                cmd.Parameters.AddWithValue("@mob", TextMob.Text);
                cmd.Parameters.AddWithValue("@mail", TextMail.Text);
                cmd.Parameters.AddWithValue("@address", TextAddress.Text);
                cmd.Parameters.AddWithValue("@pass", TextPass.Text);
                cmd.Parameters.AddWithValue("@nam", name);

                cmd.ExecuteNonQuery();
                Label5.Text = "Your details updated sucessfully!";

                


            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandText = "Update cust_register set password=@pass where customer_id=@nam";
              
                cmd.Parameters.AddWithValue("@pass", TextPass.Text);
                cmd.Parameters.AddWithValue("@nam", name);

                cmd.ExecuteNonQuery();
                Label5.Text = "Your details updated sucessfully & Password!";




            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}