<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="web.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <div>
        <h1>Bestellen</h1>
        <p></p>
         <asp:GridView ID="grdProducts" runat="server" DataSourceID="odsProducts" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" SortExpression="PricePerUnit" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression ="Category" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="PricePerExtra" HeaderText="PricePerExtra" SortExpression="PricePerExtra" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsProducts" runat="server" SelectMethod="ProductsGetAll" TypeName="bll.clsProductFacade" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
         
    <!--
         <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="odsProducts" DataTextField="Name" DataValueField="Id" Visible="false">
         </asp:CheckBoxList>-->
         
    
    </div>
        <asp:DropDownList ID="inOrderlist" runat="server" DataSourceID="odsProducts" DataTextField="Name" DataValueField="Id" Visible="true">
        </asp:DropDownList>

          <p>
            <asp:Label ID="lblCount" runat="server" Text="Count:" Width="100px"></asp:Label>
            <asp:TextBox ID="inCount" runat="server" TextMode="Number" Width="30px">0</asp:TextBox>
        </p>
           <p>
            <asp:Label ID="lblSize" runat="server" Text="Size:" Width="100px"></asp:Label>
            <asp:TextBox ID="inSize" runat="server" TextMode="Number" Width="30px">0</asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblExtras" runat="server" Text="Extras:" Width="100px"></asp:Label>

            <asp:TextBox ID="inExtras" runat="server" TextMode="Number" Width="30px">0</asp:TextBox>
        </p><p>
                 <%--   <asp:CheckBoxList ID="inListDelivery" runat="server" TextAlign="Left">
                <asp:ListItem Value="true">Lieferung</asp:ListItem>
                <asp:ListItem Value="false">Abholung</asp:ListItem>
            </asp:CheckBoxList>--%>
            <asp:RadioButtonList ID="inListDelivery" runat="server" TextAlign="Left">
                <asp:ListItem Value="true">Lieferung</asp:ListItem>
                <asp:ListItem Value="false">Abholung</asp:ListItem>
             </asp:RadioButtonList>
        </p>
        <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" />
        <p>
        <asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>
            </p><p>
            <asp:HyperLink ID="linkLogin" runat="server" Visible="false" NavigateUrl="~/Login.aspx">Zum Login</asp:HyperLink>
                <asp:HyperLink ID="linkDefault" runat="server" NavigateUrl="~/default.aspx">Main Page</asp:HyperLink>
            </p>
    </form>
</body>
</html>
