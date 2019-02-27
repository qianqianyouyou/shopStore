<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StationeryManage.aspx.cs" Inherits="Web_Admin_StationeryManage" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="ObjectDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="727px" Height="588px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Web/User/StationeryShow.aspx?id={0}" DataTextField="ID" HeaderText="商品号" NavigateUrl="~/Web/Admin/StationeryEdit.aspx">
            <ControlStyle BackColor="White" ForeColor="Black" />
            <FooterStyle BackColor="White" BorderColor="White" ForeColor="Black" />
            <HeaderStyle ForeColor="Black" />
            <ItemStyle BackColor="White" ForeColor="Black" />
            </asp:HyperLinkField>
            <asp:TemplateField HeaderText="类别" SortExpression="CatID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CatID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# ((SsCategory)Eval("SsCategory")).Name %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="商品名" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="单价" SortExpression="Price" />
            <asp:BoundField DataField="Brand" HeaderText="品牌" SortExpression="Brand" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Web/Admin/SstationeryEdit.aspx?id={0}" HeaderText="编辑" Text="编辑" >
            <ControlStyle Font-Bold="True" Font-Italic="False" ForeColor="Black" />
            <FooterStyle BackColor="White" />
            </asp:HyperLinkField>
            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteSsStationery" SelectMethod="FindSsStationerys" TypeName="SsStationeryBLL" EnablePaging="True" SelectCountMethod="FindCount" SortParameterName="sortExpression">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="catID" Type="Int32" />
            <asp:SessionParameter DefaultValue="" Name="name" SessionField="name" Type="String" />
            <asp:SessionParameter Name="brand" SessionField="brand" Type="String" />
            <%--<asp:Parameter Name="sortExpression" Type="String" />
            <asp:Parameter Name="startRowIndex" Type="Int32" />
            <asp:Parameter Name="maximumRows" Type="Int32" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <center> <asp:Button ID="Button1" runat="server" Text="添加" Width="68px" 
            onclick="Button1_Click" /></center>
   
</asp:Content>

