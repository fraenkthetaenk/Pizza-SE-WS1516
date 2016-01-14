<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="web._default" Culture="de-DE" %>

<!DOCTYPE html>

<html lang="de-DE">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <meta charset="ISO-8859-1" />
    <title>Pizza Pizza!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Willkommen bei MSSF's Pizza!</h1>
        </div>
        <p>
            <asp:Label ID="lblNotLogedIn" runat="server" Text="Sie sinf auf der Allgeminen Startseite (nicht Angemeldet), bitte melden sie sich an" Visible="false"></asp:Label>
        </p>
        <p>
            <a href="Beispiele/default.aspx">Hier</a> gehts weiter zu einigen Beispielprogrammen ...
        </p>

        <a href="product-read.aspx">Products</a>

        <p>
            <asp:HyperLink ID="linkLogin" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="linkUnregister" runat="server" NavigateUrl="~/Unregister.aspx">Unregister</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="linkRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="linkOrder" runat="server" NavigateUrl="~/Order.aspx">Order</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="linkMyOrders" runat="server" NavigateUrl="~/MyOrders.aspx">Meine Bestellungen</asp:HyperLink>
        </p>

        <asp:Label ID="lblCurrentuser" runat="server" Text=""></asp:Label>
        <p>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </p>
        <p><i>Version: 26.11.2015</i></p>
    </form>
</body>
</html>
