<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FindStationery.ascx.cs" Inherits="Web_Common_Controls_FindStationery" %>
<b>查询特定商品：</b><br />
<asp:RadioButtonList ID="RadFindFlag" runat="server">
    <asp:ListItem Value="0">按商品名称查询</asp:ListItem>
    <asp:ListItem Value="1">按商品类别查询</asp:ListItem>
</asp:RadioButtonList>
<asp:TextBox ID="TxtFindText" runat="server" Width="120" Height="18"></asp:TextBox>
<asp:Button ID="FindButton" runat="server" Text="查询" 
    PostBackUrl="~/web/Book/BookBrowse.aspx" onclick="FindButton_Click" />