<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="login2.Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
    <style type="text/css">
                 body{
            width:100vw;
            height:100vh;
            font-family: 'Baloo 2', cursive;
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
          
           background: rgb(242,209,124);
           background: radial-gradient(circle, rgba(242,209,124,1) 0%, #673AB7 100%); 
           background-size:100% 100% ;
            background-repeat: no-repeat;
            font-family: 'Baloo 2', cursive;
        }
                         .reg-box{     
                    width: 545px;
    height: 681px;
    position: relative;
    top: 8px;
    /* left: -74px; */
    color: white;
    /* transform: translate(-50%,-50%); */
    background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgb(128,87,198)100%);
    border-radius: 40px 5px 40px 5px;
    box-shadow: 8px 8px 8px rgb(96,61,157);
    cursor: pointer;
        }
        .reg-box h1{
            color:white;
            margin-top:20px;
            font-family: 'Sansita Swashed', cursive;

        }

        #DataList1{
        
        }
        .container{
            display:flex;
            flex-direction:column;
            align-items:center;
            justify-content:center;
        }
        .detailsdiv{
            display:none;
        }
       
        .auto-style1 {
            text-align: center;
        }
       .maintable{
       }
       .maintable tr{
       }
       .datalistmy{
              /* border: 2px solid black;*/
     height: 483px;
    overflow: auto;
    position: relative;
    top: -538px;
    left: -477px;
       }
       .accountlabel{
                  position: relative;
   
    font-size: 26px;
    font-weight: 800;
    left: -475px;
    top: -560px;
    color: white;
       }
       #DataList1 {
    background: transparent!important;
    color: white!important;
}
      /*.afterdetailsfetch{
          display:none;
       }
    #detailstable{
        display:none;
    }*/
          .myButton {
	box-shadow: 3px 4px 0px 0px #899599;
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border-radius:15px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:black!important;
    font-weight:bold;
	font-family:Arial;
	font-size:13px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #e1e2ed;
    margin:5px 10px;
    width:172px;
  
}
.myButton:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.myButton:active {
	position:relative;
	top:1px;
}
input[type=text]{
            background:transparent;
            width:200px;
            border-radius:3px;
              border-bottom:3px solid rgb(255,165,0);
              border-left:none;
              border-right:none;
              border-top:none;
              color:white;
              text-align:center;
          }
#Button3{
        left: -544px;
    display: inline-block;
    position: relative;
    top: -63px;
}
#Button4{
    width:237px;
}
#Button7{
    display: inline-block;
    position: relative;
    left: 432px;
    top: -63px;
}


    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container"> 
            
            <div class="container reg-box">
            <div class="homebutton">
                
                <asp:Button ID="Button3" class="myButton" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
              
                <asp:Button ID="Button7" class="myButton" runat="server" Text="Log Out" CausesValidation="False" PostBackUrl="loginpage.aspx"/>
            </div>
                
          <h1>Transfer Money </h1>

            <asp:Button ID="Button6" class="myButton" runat="server" OnClick="Button6_Click" Text="Check Your Balance" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server"></asp:Label>

            <br />
            <table class="table maintable table-striped">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Recipient&#39;s Account No: </td>
                    <td>
                        <asp:TextBox ID="RecAccount" runat="server" Height="25px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RecAccount" Display="Dynamic" ErrorMessage="This is Required." ForeColor="Red" SetFocusOnError="True" ValidationGroup="maintable"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Amount To send:</td>
                    <td>
                        <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount" Display="Dynamic" ErrorMessage="This is Required." ForeColor="Red" SetFocusOnError="True" ValidationGroup="maintable"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Recipient&#39;s Firm:</td>
                    <td>
                        <asp:TextBox ID="Firm" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Transfer Details:</td>
                    <td>
                        <asp:TextBox ID="Details" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3">
                        <asp:Button ID="Button1"  class="myButton" runat="server" OnClick="Button1_Click" Text="Fetch Details" ValidationGroup="maintable" />
                    </td>
                </tr>
            </table>
           
        
        <p>

            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label15" runat="server" ForeColor="Red"></asp:Label>
        </p>
                <asp:Panel ID="Panel1" runat="server" Visible="False">   <div class="afterdetailsfetch"> 
        <table class="table secondtable" id="detailstable">
            <tr>
                <td>Sender&#39;s Name:</td>
                <td>
                    <asp:TextBox ID="Sendername" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Recipient&#39;s Name:</td>
                <td>
                    <asp:TextBox ID="Receivername" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Amount to Send:</td>
                <td>
                    <asp:TextBox ID="AmountToSend" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Button ID="Button5" class="myButton" runat="server" OnClick="Button5_Click" Text="Generate OTP" Visible="False" />
                    <br />
                    <br />
                    <asp:TextBox ID="OTPTextBox" runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="OTPTextBox" Display="Dynamic" ErrorMessage="This is Required." ForeColor="Red" SetFocusOnError="True" ValidationGroup="otp"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
           </div>

                    <asp:Button ID="Button2" class="myButton" runat="server" OnClick="Button2_Click" Text="Confirm" Visible="False" ValidationGroup="otp" />
                </asp:Panel>
    
      
        
   <asp:Label ID="Label3" runat="server"></asp:Label>
      
               
      
            <asp:Button ID="Button4" class="myButton" runat="server" OnClick="Button4_Click" Text="Generate Account Statement" />
               
        
<asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
       <br />
       <br />
           
                </div>
             <div class="accountlabel"><asp:Label ID="Label8" runat="server" Text="Your Account Statement" Visible="false"></asp:Label></div>
          
            <div class="datalistmy"> 
               
               <asp:DataList ID="DataList1" runat="server" BackColor="#dfe6e9" BorderColor="Tan" BorderWidth="1px" CellPadding="5" ForeColor="Black" CssClass="">
                <AlternatingItemStyle  />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <ItemTemplate>
                    <table class="table datalisttable">
                        <tr>
                            <td>Sent To:</td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Credit_Account_No") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Amount: </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Transaction Type:</td>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Transaction_Type") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Transaction Date:</td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("Transaction_Date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Transaction Details:</td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("Transaction_Details") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
               
              </div>  
           <!--   <asp:GridView ID="GridView1" runat="server"></asp:GridView>
              -->
         
        
        <asp:Label ID="Label7" runat="server"></asp:Label>
            </div>
    </form>
     
</body>
</html>