<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unregister.aspx.cs" Inherits="web.Unregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblUsername" runat="server" Height="20px" Text="Username:" Width="100px"></asp:Label><asp:TextBox ID="inUsername" runat="server"></asp:TextBox>
        <p>
        <asp:Label ID="lblPassword" runat="server" Height="20px" Text="Password:" Width="100px"></asp:Label>
<asp:TextBox ID="inPassword" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <asp:Label ID="lblError" runat="server" Height="20px" Visible="false"  Width="100px"></asp:Label>
        <p>
        <asp:Button ID="btnUnregister" runat="server" Text="Unregister" OnClick="btnUnregister_Click" />
        </p>
        
    </form>
</body>
</html>
