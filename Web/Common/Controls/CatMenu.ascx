<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CatMenu.ascx.cs" Inherits="Web_Common_Controls_CatMenu" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" 
    RepeatDirection="Horizontal" Width="100%">
    <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            CommandArgument='<%# Eval("CatID") %>' oncommand="LinkButton1_Command" 
            Text='<%# Eval("Name") %>' Font-Size="large" ></asp:LinkButton>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="FindSsCategories" TypeName="SsCategoryBLL">
</asp:ObjectDataSource>

