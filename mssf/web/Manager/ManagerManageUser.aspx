<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerManageUser.aspx.cs" Inherits="web.Manager.ManagerManageUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nutzerverwaltung</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:GridView ID="grdUser" runat="server" AutoGenerateColumns="False" DataSourceID="odsUser">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                    <asp:CommandField ButtonType="Button" HeaderText="Change" ShowEditButton="True" ShowHeader="True" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="odsUser" runat="server" DataObjectTypeName="bll.clsUser" SelectMethod="UsersGetAll" TypeName="bll.clsUserFacade" UpdateMethod="UserUpdate"></asp:ObjectDataSource>

            In diesen Abschnitt können sie einen neuen Nutzer hinzufügen:<br />
            <asp:Label ID="lblUserName" runat="server" Text="Nutzername"></asp:Label>
            <asp:TextBox ID="inName" runat="server"></asp:TextBox><p />
            <asp:Label ID="lblAdresse" runat="server" Text="Adresse"></asp:Label><asp:TextBox ID="inAdress" runat="server"></asp:TextBox><p />
            <asp:Label ID="lblDistance" runat="server" Text="Distance"></asp:Label>
            <asp:TextBox ID="inDistance" runat="server"></asp:TextBox><p />
            <asp:Label ID="lblActive" runat="server" Text="Aktiver User"></asp:Label>
            <asp:CheckBox ID="checkActive" runat="server" /><p />
            <asp:Label ID="lblRole" runat="server" Text="Rollle"></asp:Label><asp:DropDownList ID="ListRole" runat="server">
                <asp:ListItem Value="0">Nutzer</asp:ListItem>
                <asp:ListItem Value="1">Manager</asp:ListItem>
                <asp:ListItem Value="2">Mitarbeiter</asp:ListItem>
            </asp:DropDownList><p />
            <asp:Label ID="lblpasswort" runat="server" Text="Passwort"></asp:Label>
            <asp:TextBox ID="inPassword" runat="server"></asp:TextBox><p />
            <asp:Button ID="btnInsert" runat="server" Text="User einfügen" OnClick="btnInsert_Click" /><p />
            <asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>


            <a href="ManagerDefault.aspx">Startseite</a>

        </div>
    </form>
</body>
</html>
