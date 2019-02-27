<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserManage.aspx.cs" Inherits="Web_Admin_UserManage1"  Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

      
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="464px" Width="857px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Realname" HeaderText="Realname" SortExpression="Realname" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
    
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectString %>" SelectCommand="SELECT [Username], [Email], [Realname], [Address], [Phone], [Role], [Zipcode] FROM [SsUser]"></asp:SqlDataSource>
</asp:Content>

