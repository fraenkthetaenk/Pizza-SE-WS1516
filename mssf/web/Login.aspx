<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblUsername" runat="server" Text="Username:" Height="20px" Width="100px"></asp:Label>
        <asp:TextBox ID="inUser" runat="server"></asp:TextBox>
        <p></p>
        <asp:Label ID="lblPassword" runat="server" Text="Password:" Height="20px" Width="100px"></asp:Label>
        <asp:TextBox ID="inPassword" runat="server" TextMode="Password"></asp:TextBox>
        <p>
            &nbsp;<asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label></p><p>
            <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="Login" />
        </p>
    </form>
</body>
</html>
