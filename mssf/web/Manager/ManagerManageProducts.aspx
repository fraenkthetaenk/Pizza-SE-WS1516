<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerManageProducts.aspx.cs" Inherits="web.Manager.ManagerManageProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Produktverwaltung</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="grdProducts" runat="server" AutoGenerateColumns="False" DataSourceID="obsProducts">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" SortExpression="PricePerUnit" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="PricePerExtra" HeaderText="PricePerExtra" SortExpression="PricePerExtra" />
                <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                <asp:CommandField ButtonType="Button" HeaderText="Ändern" ShowEditButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="obsProducts" runat="server" DataObjectTypeName="bll.clsProduct" SelectMethod="ProductsGetAll" TypeName="bll.clsProductFacade" UpdateMethod="ProductUpdate"></asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
