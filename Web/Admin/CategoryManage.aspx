<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CategoryManage.aspx.cs" Inherits="Web_Admin_CategoryManage" Theme="Theme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" 
        EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
        Width="628px" HorizontalAlign="Center" Height="387px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CatID" HeaderText="分类" SortExpression="CatID" />
            <asp:BoundField DataField="Name" HeaderText="用品名" SortExpression="Name" />
            <asp:CommandField ShowEditButton="True" HeaderText="操作" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteSsCategory" 
        InsertMethod="AddSsCategory" SelectMethod="FindSsCategories" 
        TypeName="SsCategoryBLL" UpdateMethod="EditSsCategory" 
        DataObjectTypeName="SsCategory" SqlCacheDependency="StationeryStore:SsCategory">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>

