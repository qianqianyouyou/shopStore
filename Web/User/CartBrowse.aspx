<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CartBrowse.aspx.cs" Inherits="Web_User_CartBrowse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" 
            EmptyDataText="购物车内容" EnableModelValidation="True" ForeColor="#333333" 
            GridLines="None" HorizontalAlign="Center"  Width="716px" DataSourceID="ObjectDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CatID" HeaderText="CatID" SortExpression="CatID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindSsCategories" TypeName="SsCategoryDAL"></asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server">清空购物车</asp:LinkButton>
        <asp:HyperLink ID="HyperLink1" runat="server">结账</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
