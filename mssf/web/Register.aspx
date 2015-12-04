<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="web.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <h1>Anmeldung</h1>
        </div><p></p>
        <p>
            <asp:Label ID="lblUsername" runat="server" Text="Username" Height="20px" Width="100px"></asp:Label>
            <asp:TextBox ID="inUsername" runat="server" Height="20px" Width="150px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblAdress" runat="server" Text="Adress:" Height="20px" Width="100px"></asp:Label>
            <asp:TextBox ID="inAdress" runat="server" Height="20px" Width="150px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblDistance" runat="server" Text="Distance:" Height="20px" Width="100px"></asp:Label>
            <asp:TextBox ID="inDistance" runat="server" Height="20px" Width="150px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblisActive" runat="server" Text="Active:" Height="20px" Width="100px"></asp:Label>
            <asp:RadioButton ID="isActive" runat="server" Height="20px" Width="150px" />
        </p>
            <asp:Label ID="lblRole" runat="server" Text="Role:" Height="20px" Width="100px"></asp:Label>
            <asp:DropDownList ID="inRole" runat="server" Height="20px" Width="150px">
                <asp:ListItem Value="0">Kunde</asp:ListItem>
                <asp:ListItem Value="1">Manager</asp:ListItem>
                <asp:ListItem Value="2">Service</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Password:" Height="20px" Width="100px"></asp:Label>
            <asp:TextBox ID="inPassword" runat="server" TextMode="Password" Height="20px" Width="150px"></asp:TextBox>
        </p>



        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Height="20px" Width="150px"/><asp:HyperLink ID="linkDefault" runat="server" NavigateUrl="~/default.aspx">Main Page</asp:HyperLink>
    </form>
</body>
</html>
