using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.SessionState;

namespace login2
{
    public partial class Transaction : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");
        static int balancecheck ;
        static string receiveraccount;
        static string senderaccount;
        static int transactionamount;
        static string date = DateTime.Now.ToString();
        string custid = "ESB45367";
        string receivercustid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  string name = Request.QueryString["custid"];
              name = "ESB45367";

              */
            Button2.Visible = false;
            Response.Write(date);
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            // to fetch detals from Account_Details table
            try
            {
                string name = "ESB45367";
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                string receipient = RecAccount.Text;
                cmd.Parameters.AddWithValue("@receiveraccount", receipient);
            
                cmd.CommandText = "Select Name from cust_profile where Account_No=@receiveraccount";
       
                
     
                string rec = "receiver";
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    rec = r.GetString(0);
                }  
                if (r.Read())
                {
                    rec = r.GetString(1);
                }

                Receivername.Text = rec;

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();

            } 
            // for getting sender's name
            try
            {
                
                con.Open();
                SqlCommand cmd = con.CreateCommand();
              
              
                cmd.Parameters.AddWithValue("@senderid", custid);
              
                cmd.CommandText = "Select Name from cust_profile where Cust_ID=@senderid";
                
                string s="sender";
            
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }  
               

                Sendername.Text = s;

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            //   int amounttosend = int.Parse(AmountToSend.Text);
            // for checking sender balance
            string balance="1";
           
            try
            {
                string name = "ESB45367";
                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@senderid", custid);

                cmd.CommandText = "Select Balance from Account_Details where Cust_ID=@senderid";

                string s = "sender";

                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }
                balance = s;
               
                balancecheck = Convert.ToInt32(balance);
                Label1.Text = "Your Current balance is " + balancecheck;

            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            int amounttosend = Convert.ToInt32(Amount.Text);

            if (balancecheck <= 500)
            {
                Label2.Text = "You must have 500 as minimum balance";
         
            }
            else if (balancecheck < (amounttosend + (500)))
            {
                Label2.Text = "Sorry u have insufficient funds";
               
            }
            else
            {
                Label2.Text = "Go";
                Button2.Visible = true;
                AmountToSend.Text = Amount.Text;
            }

            receiveraccount = RecAccount.Text;
            transactionamount = Convert.ToInt32(Amount.Text);
            
            //for getting senderaccount
            // for getting sender's name
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@senderid", custid);

                cmd.CommandText = "Select Account_No from cust_profile where Cust_ID=@senderid";

                string s = "sender";

                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }

                senderaccount = s;

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
            //subtracting from sender
            try { 
            Label1.Text = balancecheck.ToString();
            string name = "ESB45367";
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "Update Account_Details set Balance=@amounttosend where Cust_ID=@senderid";
            cmd.Parameters.AddWithValue("@senderid", custid);
            balancecheck = balancecheck - Convert.ToInt32(AmountToSend.Text);
            string amt = Convert.ToString(balancecheck);

            cmd.Parameters.AddWithValue("@amounttosend", amt);
            cmd.ExecuteNonQuery();
            Label4.Text = "Balance Left : " + amt;
            Label3.Text = "Transaction Successful";
                Label1.Text = "";
                Label2.Text = "";

        }
            
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }

            // for checking receiver balance
            string receiverbalance = "1";

            try
            {
           
                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@receiveract", RecAccount.Text);
                receiveraccount = RecAccount.Text;
                cmd.CommandText = "Select Balance from Account_Details where Account_No=@receiveract";

                string s = "sender";

                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }
                receiverbalance = s;

               
                

            }
            catch (Exception ex)
            {
                Label5.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }

            //adding money to reveiver
         Label5.Text = "Receiver Balance is " + receiverbalance;
            try
            {
    
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@receiveract", RecAccount.Text);
               
                cmd.CommandText = "Update Account_Details set Balance=@amounttosend where Account_No=@receiveract";
                receiverbalance=Convert.ToString(Convert.ToInt32(receiverbalance)+ Convert.ToInt32(AmountToSend.Text));

                cmd.Parameters.AddWithValue("@amounttosend", receiverbalance);
                cmd.ExecuteNonQuery();
                Label5.Text = "Credited to Receiver Successfully!! " + receiverbalance;
                Label1.Text = "";
                Label2.Text = "";

            }

            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }


            //entry of credit (senderside) in all_Transactions table
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@creditaccount", receiveraccount);
                cmd.Parameters.AddWithValue("@debitaccount", senderaccount);
                cmd.Parameters.AddWithValue("@amount", transactionamount);
                cmd.Parameters.AddWithValue("@custid", custid);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@transactiontype", "DEBIT");


                cmd.CommandText = "insert into All_Transactions_New values (@custid,@creditaccount,@debitaccount,@date,@amount,@transactiontype)";


                cmd.ExecuteNonQuery();
                Label6.Text = "Added entry to all_transactionstable";
            }

            catch (Exception ex)
            {
                Label6.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }

            //getting receiver's cust id for adding entry to all_transactions table
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@receiveract", RecAccount.Text);
                receiveraccount = RecAccount.Text;
                cmd.CommandText = "Select Cust_ID from Account_Details where Account_No=@receiveract";

                string s = "sender";

                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }
  //              Label6.Text = "Receiver's cust id " + s;

                receivercustid = s;


            }
            catch (Exception ex)
            {
                Label6.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            //entry of receiverside in all_Transactions table
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@creditaccount", receiveraccount);
                cmd.Parameters.AddWithValue("@debitaccount", senderaccount);
                cmd.Parameters.AddWithValue("@amount", transactionamount);
                cmd.Parameters.AddWithValue("@custid", receivercustid);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@transactiontype", "CREDIT");


                cmd.CommandText = "insert into All_Transactions_New values (@custid,@creditaccount,@debitaccount,@date,@amount,@transactiontype)";


                cmd.ExecuteNonQuery();
                Label6.Text = "Added entry to receiver side all_transactionstable";
            }

            catch (Exception ex)
            {
                Label6.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }


        }
    }
}