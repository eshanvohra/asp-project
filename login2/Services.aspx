<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="login2.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services Page</title>
    
<link rel="stylesheet" href="Css_New/services.css" />
</head>
    <link rel="icon" 
      type="image/png" 
      href="../Images/favicon.png" />
<body onload="myfunction()">
   <form id="form1" runat="server">
         <div id="loading">
            <!--<div id="ring"></div>
             <div id="text1">LOADING</div>-->
         <span class="loader"></span>
         <span></span>
         <span class="loader1">Loading</span>
        </div>
    
        <div class="auto-style1">
            <h1>

            Services
            </h1>
            <br />
            <br />
            <br />

&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <div class="tbl">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1">

            <asp:ImageButton ID="ImageButton1"  class="image" runat="server" Height="130px" ImageUrl="../Images/electricity.jpg" AlternateText="Electricity Bill Pay" DescriptionUrl="Electricity Bill Pay" PostBackUrl="~/electricitybillpay.aspx" />
                    </td>
                    <td>
            <asp:ImageButton ID="ImageButton2" class="image" runat="server" Height="130px" ImageUrl="../Images/telephone.png" PostBackUrl="~/telephonebillpay.aspx"/>
                    </td>
                    <td>
            <asp:ImageButton ID="ImageButton3" class="image" runat="server" Height="130px" ImageUrl="../Images/cheque.jpg" PostBackUrl="~/ChequeRequest.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">

                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Electricity Bill Pay</td>
                    <td>Telephone Bill Pay</td>
                    <td>Cheque Book Request</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
            <asp:ImageButton ID="ImageButton4" class="image" runat="server" Height="130px" ImageUrl="../Images/debitcard.jpg" PostBackUrl="~/Debit_Card_Request.aspx" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton5" class="image" runat="server" Height="130px" ImageUrl="../Images/creditcard.png" PostBackUrl="~/Credit_Card_Request.aspx" />

          </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>

                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">Debit Card Request&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Credit Card Request</td>
                </tr>
            </table>
                </div>
        </div>
    </form>
     <script>
        var preloader = document.getElementById('loading');
        function myfunction() {
            preloader.style.display = 'none';
        }
     </script>
</body>
</html>
