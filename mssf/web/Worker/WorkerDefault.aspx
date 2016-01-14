<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkerDefault.aspx.cs" Inherits="web.Worker.WorkerDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Startseite-Mitarbeiter</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMitarbeiter" runat="server" Text="Sie sind auf der Mitarbeiter Startseite" Visible="false"></asp:Label>
            <p>
            Sie sind aktuell als der Mitarbeiter 
            <asp:Label ID="lblLogedin" runat="server" Text=""></asp:Label> Eingeloggt.
             </p>
                <p>
                <a href="WorkerOrders.aspx">Zur Bestellübersicht</a>
            </p>
        </div>

        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
    </form>
</body>
</html>
