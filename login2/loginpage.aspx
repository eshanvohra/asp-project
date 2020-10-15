﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="login2.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet"/>
    <style type="text/css">
        @import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
        body{
            padding: 0;
            margin:0;
            font-family: sans-serif;
            background: rgb(238,174,202);
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            background-image: linear-gradient(rgba(98, 102, 98, 0.6),rgba(98, 102, 98, 0.6)), url('../Images/Background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: 'Baloo 2', cursive;
        }
        .auto-style1{
            width:440px;
            height:300px;
            position: absolute;
            top:50%;
            left:70%;
            transform: translate(-50%,-50%);
            color: white;
            background-color: rgb(37, 36, 36);
            box-shadow: 5px 5px 15px black;
            border-radius:30px 0px 30px 0px ;
        }
        .auto-style1 h1{
            font-size: 30px;
            border-bottom: 3px solid #4caf50;
            text-align: center;
            font-family: 'Sansita Swashed', cursive;
            margin-bottom: 50px;
            padding: 13px 10px;
        }
        .auto-style2 {
          width: 90%;
        height: 40%;
        margin-left: 50px;
        margin-top: 45px;
        margin-bottom: 28px;
        padding-left: 16px;
        padding-right: 25px
        }
        .auto-style3{
            width: 54%;
            margin: 18px 40px;
            overflow: hidden;
            padding: 5px 0px;
            font-size: 20px;
            border-bottom: 1px solid #4caf50;        
        }
        
        .auto-style3 #USERID,.auto-style3 #PASSWORD{
            border:none;
            outline:none;
            background: none;
            color:white;
            font-size: 15px;
            width:80%;
            margin:0px 10px;
        }
        .styTr{
            width: 10%;
            margin-left: 10px;
            margin-bottom: 32px;
        }
        td{
            width:44%;
        }
        .row1{
            margin-left:5px;
        }
        .btn{
            width: 90%;
            text-align: center;
            padding: 5px;
            background: none;
            margin-left: 6px;
            font-family: 'Baloo 2', cursive!important;
        }
         .btn input[type='submit']{
             cursor:pointer;
             background: none;
             color:white;
             border:none;
             width:100px;
             padding: 7px 8px;
             margin-top:10px;
             font-size: 15px;
             box-sizing: border-box;
             border: 2px solid #4caf50;
             border-radius:10px ;
             background:linear-gradient(to right,#4caf50, #8bcc8d);
         }
         .btn input[type='submit']:hover{
             color:rgb(104, 76, 202);
             border-radius: 10px;
             font-size: 15px;

         }
         #ImageButton3{
             border-radius:8px;
         }
         #ImageButton4{
             border-radius:8px;
         }
         #GridView1{
             display:none;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="auto-style1">
            <h1>Login Form</h1>
            <table class="auto-style2">
                <tr class="styTr">
                    <td class="row1">
                        <asp:ImageButton ID="ImageButton3" runat="server" Enabled="False" ImageUrl="../Images/nameicon.png" ToolTip="User ID" />
                        User ID </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="USERID" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="USERID" Display="Dynamic" ErrorMessage="Please Enter User ID" ForeColor="Red" SetFocusOnError="True">Please Enter User ID</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="styTr">
                    <td class="row1">
                        <asp:ImageButton ID="ImageButton4" runat="server" Enabled="False" ImageUrl="../Images/password11icon.png" ToolTip="Password" />
                        Password </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="PASSWORD" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PASSWORD" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True">Please Enter Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="styTr">
                    <td colspan="3" class="btn">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>