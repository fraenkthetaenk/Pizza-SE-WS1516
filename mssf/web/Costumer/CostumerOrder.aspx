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
                <asp:TemplateField HeaderText="Größe">
                    <ItemTemplate>
                        <asp:DropDownList runat="server" ID="lisSize">
                            <asp:ListItem Value="26">Klein</asp:ListItem>
                            <asp:ListItem Value="32">Mittel</asp:ListItem>
                            <asp:ListItem Value="45">Groß</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Extras">
                        <ItemTemplate>
                            <asp:DropDownList runat="server" ID="lisExtras">
                                <asp:ListItem Value="0">0</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Menge">
                        <ItemTemplate>
                            <asp:TextBox ID="inMenge" runat="server" Width="50px"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Lieferung">
                        <ItemTemplate>
                            <asp:CheckBox ID="checkDelivery" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Bestellen" ShowHeader="True" Text="Auswählen" />
            </Columns>
        </asp:GridView>


        <asp:ObjectDataSource ID="odsActiveProducts" runat="server" SelectMethod="ProductsGetAllActive" TypeName="bll.clsProductFacade"></asp:ObjectDataSource>
        <asp:Label ID="lblMessage1" runat="server" Text=""></asp:Label><p/>
        <asp:Label ID="lblMessage2" runat="server" Text=""></asp:Label><p/>
        <asp:Label ID="lblMessage3" runat="server" Text=""></asp:Label><p/>

        <a href="CostumerDefault.aspx">Startseite</a>
    </form>
</body>
</html>
