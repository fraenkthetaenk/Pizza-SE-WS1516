<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CostumerOrderOverview.aspx.cs" Inherits="web.Costumer.CostumerOrderOverview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="grdCostumerOrderOverview" runat="server" AutoGenerateColumns="False" DataSourceID="obsCostumerOrders">
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
        <asp:Label ID="lblUserID" runat="server" Text="" Visible="false"></asp:Label>
        <asp:ObjectDataSource ID="obsCostumerOrders" runat="server" SelectMethod="OrdersGetByID" TypeName="bll.clsOrderFacade">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUserID" DefaultValue="" Name="userID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>

           Der Gesamtumsatz Beträgt:
            <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label><p />

        <a href="CostumerDefault.aspx">Startseite</a>
    
    </div>
       
        
    </form>
</body>
</html>
