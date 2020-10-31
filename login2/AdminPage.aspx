<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="login2.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style1">
            MANAGER DASHBOARD - ESB</p>
        <p class="auto-style1">
            &nbsp;</p>
        <table class="auto-style2">
            <tr>
                <td>CustID:</td>
                <td>
                    <asp:TextBox ID="CustID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>AccountNo:</td>
                <td>
                    <asp:TextBox ID="Account" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Amount to add:</td>
                <td>
                    <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Add" />
                </td>
            </tr>
        </table>
    </form>
    <p class="auto-style1">
        &nbsp;</p>
</body>
</html>
