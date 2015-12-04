<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="web.MyOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Meine Bestellungen</h1>
        <p></p>
    
        <asp:GridView ID="ViewID" runat="server" AutoGenerateColumns="False" DataSourceID="dataID"  Visible="False">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="OrderSize" HeaderText="OrderSize" SortExpression="OrderSize" />
                <asp:BoundField DataField="OrderExtras" HeaderText="OrderExtras" SortExpression="OrderExtras" />
                <asp:BoundField DataField="OrderCount" HeaderText="OrderCount" SortExpression="OrderCount" />
                <asp:BoundField DataField="OrderSum" HeaderText="OrderSum" SortExpression="OrderSum" />
                <asp:CheckBoxField DataField="OrderDelivery" HeaderText="OrderDelivery" SortExpression="OrderDelivery" />
                <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:ObjectDataSource ID="dataID" runat="server" SelectMethod="OrdersGetByID" TypeName="bll.clsOrderFacade">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUserID" Name="userID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
       
        <asp:Label ID="lblUserID" runat="server" Text="" Visible="false"></asp:Label>
       
        <asp:ObjectDataSource ID="dataAll" runat="server" SelectMethod="OrdersGetAll" TypeName="bll.clsOrderFacade"></asp:ObjectDataSource>
        <asp:GridView ID="ViewAll" runat="server" Visible="False" AutoGenerateColumns="False" DataSourceID="dataAll">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="OrderSize" HeaderText="OrderSize" SortExpression="OrderSize" />
                <asp:BoundField DataField="OrderExtras" HeaderText="OrderExtras" SortExpression="OrderExtras" />
                <asp:BoundField DataField="OrderCount" HeaderText="OrderCount" SortExpression="OrderCount" />
                <asp:BoundField DataField="OrderSum" HeaderText="OrderSum" SortExpression="OrderSum" />
                <asp:CheckBoxField DataField="OrderDelivery" HeaderText="OrderDelivery" SortExpression="OrderDelivery" />
                <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            </Columns>
        </asp:GridView>

        <asp:HyperLink ID="linkDefault" runat="server" NavigateUrl="~/default.aspx">Main Page</asp:HyperLink>
       
    </form>
</body>
</html>
