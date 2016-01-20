<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CostumerProducts.aspx.cs" Inherits="web.Costumer.CostumerProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="grdactiveProducts" runat="server" AutoGenerateColumns="False" DataSourceID="obsactiveProducts">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" SortExpression="PricePerUnit" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="PricePerExtra" HeaderText="PricePerExtra" SortExpression="PricePerExtra" />
                <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="obsactiveProducts" runat="server" SelectMethod="ProductsGetAllActive" TypeName="bll.clsProductFacade"></asp:ObjectDataSource>

        <a href="CostumerDefault.aspx">Startseite</a>
    
    </div>
    </form>
</body>
</html>
