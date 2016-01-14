<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CostumerOrder.aspx.cs" Inherits="web.Costumer.CostumerOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bestellung Kunde</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="grdProducts" runat="server" AutoGenerateColumns="False" DataSourceID="odsActiveProducts" OnSelectedIndexChanged="grdProducts_SelectedIndexChanged">
            <Columns>
                 <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                   <asp:TemplateField HeaderText="Size">
                        <ItemTemplate>
                            <asp:DropDownList runat="server" ID="List">
                                <asp:ListItem Value="0">Klein</asp:ListItem>
                                <asp:ListItem Value="1">Mittel</asp:ListItem>
                                <asp:ListItem Value="2">Groß</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Bestellen" ShowHeader="True" Text="Auswählen" />
            </Columns>
        </asp:GridView>
       
        <asp:ObjectDataSource ID="odsActiveProducts" runat="server" SelectMethod="ProductsGetAllActive" TypeName="bll.clsProductFacade"></asp:ObjectDataSource>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
