<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product-read.aspx.cs" Inherits="web.product_read" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="grdProducts" runat="server" DataSourceID="odsProducts" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" SortExpression="PricePerUnit" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="PricePerExtra" HeaderText="PricePerExtra" SortExpression="PricePerExtra" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsProducts" runat="server" SelectMethod="ProductsGetAll" TypeName="bll.clsProductFacade" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    </form>
</body>
</html>
