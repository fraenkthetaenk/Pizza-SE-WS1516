<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="web._default" Culture="de-DE" %>

<!DOCTYPE html>

<html lang="de-DE">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <meta charset = "ISO-8859-1" />
    <title>Pizza Pizza!</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Willkommen bei MSSF's Pizza!</h1></div>
    <p>
        <a href="Beispiele/default.aspx">Hier</a> gehts weiter zu einigen Beispielprogrammen ...
    </p> 
       
        <a href="product-read.aspx">Products</a>
        
        <p>
            <a href="Login.aspx"> Login</a>
            
            </p>
        <asp:Label ID="lblCurrentuser" runat="server" Text=""></asp:Label>
        <p><i>Version: 22.11.2015</i></p>
    </form>
</body>
</html>
