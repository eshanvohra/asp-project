<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="electricty_pay.aspx.cs" Inherits="login2.electricty_pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Pay Electricty Bill</h1>
            <h3> Please Select your state</h3>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="">Select Your State</asp:ListItem>
                <asp:ListItem Value="PSCL">Punjab State Power Corpartion</asp:ListItem>
                <asp:ListItem Value="DDED">Daman and Diu</asp:ListItem>
                <asp:ListItem Value="DPN">Department of Power Nagaland</asp:ListItem>
                <asp:ListItem Value="GED">Goa Electricity Department</asp:ListItem>
                <asp:ListItem Value="HPSEB">Himachal Pardesh State Electricity Board</asp:ListItem>
                <asp:ListItem Value="JBVNL">Jharkhand Bijli Vitran Limited</asp:ListItem>
                <asp:ListItem Value="KEDL">Kota Electricity Distribution</asp:ListItem>
                <asp:ListItem Value="NPCL">Noida Electricity</asp:ListItem>
                <asp:ListItem Value="RAPDRP">Sikkim Power-RAPDRP</asp:ListItem>
                <asp:ListItem Value="TSECL">TSECL Tripura</asp:ListItem>
                <asp:ListItem Value="UPPCL">Uttar Pradesh Corp Ltd</asp:ListItem>
                <asp:ListItem Value="TATA_POWER">Tata Power- Mumbai</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="selected" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
