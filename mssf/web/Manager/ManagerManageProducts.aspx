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
        In diesen Abschnitt können sie ein neues Produkt hinzufügen:<br />
        <asp:Label ID="lblProductName" runat="server" Text="Produktename"></asp:Label>  <asp:TextBox ID="inName" runat="server"></asp:TextBox><p />
        <asp:Label ID="lblCategory" runat="server" Text="Kategorie"></asp:Label><asp:DropDownList ID="ListCategoty" runat="server">
                <asp:ListItem Value="1">Pizza</asp:ListItem>
                <asp:ListItem Value="2">Getränk</asp:ListItem>
                <asp:ListItem Value="3">Dessert</asp:ListItem>
            </asp:DropDownList><p />
      
        <asp:Label ID="lblPPU" runat="server" Text="Preis pro Einheit"></asp:Label><asp:TextBox ID="inPPU" runat="server"></asp:TextBox><p />
        <asp:Label ID="lblPPE" runat="server" Text="Preis pro Extra"></asp:Label> <asp:TextBox ID="inPPE" runat="server"></asp:TextBox><p />
        <asp:Label ID="lblActive" runat="server" Text="Aktives Produkt"></asp:Label> <asp:CheckBox ID="checkActive" runat="server"/><p />
        
        
       
       
        <asp:Button ID="btnInsert" runat="server" Text="Produkt einfügen" OnClick="btnInsert_Click" /><p/>
        <asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>

         <a href="ManagerDefault.aspx">Startseite</a>
    </form>
</body>
</html>
