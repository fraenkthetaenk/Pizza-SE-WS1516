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
            <a href="ManagerDefault.aspx">Startseite</a>

        </div>
    </form>
</body>
</html>
