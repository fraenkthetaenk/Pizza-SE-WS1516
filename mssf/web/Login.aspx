<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Anmeldung</h1>

        </div>
        <p></p>
        <asp:Label ID="lblUsername" runat="server" Text="Username:" Height="20px" Width="100px"></asp:Label>
        <asp:TextBox ID="inUser" runat="server"></asp:TextBox>
        <p></p>
        <asp:Label ID="lblPassword" runat="server" Text="Password:" Height="20px" Width="100px"></asp:Label>
        <asp:TextBox ID="inPassword" runat="server" TextMode="Password"></asp:TextBox>
        <p>
            &nbsp;<asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="Login" />
            <asp:HyperLink ID="linkDefault" runat="server" NavigateUrl="~/default.aspx">Main Page</asp:HyperLink>
        </p>
        <p>

        </p>
        <p>
            <asp:Label ID="lblAccountnamen_und_rolle1" runat="server" Text="Der User 'Antonio' hat das Passwort 'aaa' und gehört der Rollle '2' an."></asp:Label><p></p>
            <asp:Label ID="lblAccountnamen_und_rolle2" runat="server" Text="Der User 'Capo' hat das Passwort 'ccc' und gehört der Rollle '1' an."></asp:Label><p></p>
            <asp:Label ID="lblAccountnamen_und_rolle3" runat="server" Text="Der User 'Berta' hat das Passwort 'bbb' und gehört der Rollle '0' an."></asp:Label>
        </p>
    </form>
</body>
</html>
