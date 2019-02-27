<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CatItemAdd.aspx.cs" Inherits="Web_User_CatItemAdd" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" EnableModelValidation="True" AllowPaging="True" CellPadding="4" Height="355px" Width="768px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField HeaderText="删除 " ShowDeleteButton="True" ShowEditButton="True" EditText="" />
            <asp:BoundField DataField="ID" HeaderText="商品编号" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="商品名称 " SortExpression="Name" />
            <asp:BoundField DataField="Quantity" HeaderText="购买数量" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="商品单价" SortExpression="Price" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
          
          
       
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindAllCartItems" TypeName="SsCartItemBLL"></asp:ObjectDataSource>
</asp:Content>

