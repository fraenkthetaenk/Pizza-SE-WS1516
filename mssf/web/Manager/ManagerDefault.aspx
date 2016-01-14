<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerDefault.aspx.cs" Inherits="web.Manager.ManagerDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Startseite-Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sie sind als der Manager
            <asp:Label ID="lblLogedIn" runat="server" Text=""></asp:Label>
            eingeloggt.
            <p>
                <a href="ManagerManageProducts.aspx">Produkte Verwalten</a>
            </p>
            <p>
                <a href="ManagerManageUser.aspx">User Verwalten</a>
            </p>
            <p>
                <a href="ManagerCoupons.aspx">Gutscheine Verwalten</a>
            </p>
            <p>
                <a href ="ManagerOrderOverview.aspx">Bestellübersicht</a>
            </p>
            <p>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </p>

        </div>
    </form>
</body>
</html>
