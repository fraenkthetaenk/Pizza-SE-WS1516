<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CostumerDefault.aspx.cs" Inherits="web.Costumer.CostumerDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Startseite-Kunde</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sie sind als der Kunde
            <asp:Label ID="lblLogedin" runat="server" Text=""></asp:Label>
            Eingeloggt.
            <p>
                <a href="CostumerProducts.aspx">Produktübersicht</a>
            </p>
             <p>
                <a href ="CostumerOrder.aspx">Bestellung</a>
            </p>
            <p>
                <a href="CostumerOrderOverview.aspx">Bestellübersicht</a>
            </p>
           
            <p>
                <a href="CostumerUmsatz.aspx">Umsatzübersicht</a>
            </p>
            <p>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </p>
        </div>
    </form>
</body>
</html>
