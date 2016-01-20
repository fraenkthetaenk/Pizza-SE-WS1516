<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CostumerOrderOverview.aspx.cs" Inherits="web.Costumer.CostumerOrderOverview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                <asp:BoundField DataField="OrderDeliveryDate" HeaderText="OrderDeliveryDate" SortExpression="OrderDeliveryDate" />
                <asp:BoundField DataField="OrderSize" HeaderText="OrderSize" SortExpression="OrderSize" />
                <asp:BoundField DataField="OrderExtras" HeaderText="OrderExtras" SortExpression="OrderExtras" />
                <asp:BoundField DataField="OrderCount" HeaderText="OrderCount" SortExpression="OrderCount" />
                <asp:BoundField DataField="OrderSum" HeaderText="OrderSum" SortExpression="OrderSum" />
                <asp:CheckBoxField DataField="OrderDelivery" HeaderText="OrderDelivery" SortExpression="OrderDelivery" />
                <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="OrdersGetByID" TypeName="bll.clsOrderFacade">
            <SelectParameters>
                <asp:Parameter DefaultValue="null" Name="userID" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
