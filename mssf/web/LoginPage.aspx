<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="web.Beispiele.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:Label ID="lblUser" runat="server" BackColor="Black" ForeColor="White" Height="20px" Text="Username:" Width="100px"></asp:Label>
            <input id="inUsername" type="text" /><asp:Label ID="test" runat="server"></asp:Label>
        </p>
        <asp:Label ID="lblPassword" runat="server" BackColor="Black" ForeColor="White" Height="20px" Text="Password:" Width="100px"></asp:Label>
       
        <input id="inPassword" type="password" /><p>
         <asp:Button ID="btnLogin" runat="server" Height="20px" Text="Login" Width="100px" OnClick="btnLogin_Click" />
            </p>
    </form>
</body>
</html>
