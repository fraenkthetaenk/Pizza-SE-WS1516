<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkerOrders.aspx.cs" Inherits="web.Worker.WorkerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mitarbeiter Bestellungen</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="grdActiveOrders" runat="server" AutoGenerateColumns="False" DataSourceID="odsActiveProducts">
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
        <asp:ObjectDataSource ID="odsActiveProducts" runat="server" SelectMethod="OrdersGetAllActive" TypeName="bll.clsOrderFacade"></asp:ObjectDataSource>
        <a href="WorkerDefault.aspx">Startseite</a>
    </div>
    </form>
</body>
</html>
