<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Content1.aspx.cs" Inherits="Content1" Theme="Theme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 232px;
        }
        .style2
        {
            width: 106%;
            height: 195px;
        }
        .style3
        {
            width: 92px;
        }
        .style4
        {
            width: 62px;
        }
        .auto-style21 {
            width: 180px;
        }
        .auto-style23 {
            width: 74px;
        }
        .auto-style25 {
            width: 538px;
        }
        .auto-style26 {
            width: 538px;
            height: 100px;
        }
        .auto-style27 {
            width: 750px;
            height: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" 
        EnableModelValidation="True" GroupItemCount="2" style="margin-bottom: 16px">
        <EmptyDataTemplate>
            <table runat="server" style="" width="">
                <tr>
                    <td>
                        未返回数据</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td runat="server" class="auto-style27 " >
                <table class="style2" style="width:650px" >
                    <tr>
                        <td class="style4" rowspan="4" style="width: 250px;">
                            <%--<asp:HyperLink runat="server" NavigateUrl='~/web/User/StationeryShow1.aspx?id=<%# Eval("ID").ToString() %>' >
                                <asp:Image ID="Image1" runat="server"  
                                ImageUrl='<%# Eval("Image", "~/Web/Common/StationeryImages/{0}") %>' />
                            </asp:HyperLink>--%>
                            <a href="/web/User/StationeryShow.aspx?ID=<%# Eval("ID").ToString() %>">
                                <asp:Image ID="Image1" runat="server"  
                                ImageUrl='<%# Eval("Image", "~/Web/Common/StationeryImages/{0}") %>' />
                            </a>
                        </td>
                      
                        <td class="auto-style23" style="width: 100px;">
                            商品名：</td>
                        <td class="auto-style21" style="width: 150px;">
                            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" 
                              ForeColor="Black"  Text='<%# Eval("Name") %>'></asp:HyperLink>
                        </td>
                    </tr>
                      <tr>
                          <td class="auto-style23" style="width: 100px;">
                            商品编号：</td>
                          <td>
                          <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" 
                              ForeColor="Black"  Text='<%# Eval("ID") %>'></asp:HyperLink>
                          </td>
                      </tr>
                    <tr>
                        <td class="auto-style23" style="width: 100px;">
                            商标：</td>
                        <td class="auto-style21"style="width: 150px;" >
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Brand") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="width: 100px;">
                            单价：</td>
                        <td class="auto-style21" style="width: 150px;">
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Price","{0:F2}") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Button runat="server" ID="btn_add" OnClick="btn_add_OnClick" OnClientClick="alert('添加到购物车成功')" CommandArgument='<%# Eval("ID") %>'  Text="加入购物车" />         
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </ItemTemplate>
        
        <LayoutTemplate>
            <table runat="server" style="width: 750px; height: 170px; font-size:large" >
                <tr runat="server">
                    <td runat="server" class="auto-style26">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" class="auto-style25" style="text-align: center">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="4" >
                            <Fields>
                                <asp:NextPreviousPagerField ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" ButtonType="Button"  />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="FindSsStationerys" TypeName="SsStationeryBLL" 
        EnablePaging="True" SelectCountMethod="FindCount" 
        SortParameterName="sortExpression">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="catID" Type="Int32" />
            <asp:SessionParameter DefaultValue="" Name="name" SessionField="name" 
                Type="String" />
            <asp:SessionParameter Name="brand" SessionField="brand" Type="String" />
            <%--<asp:Parameter Name="sortExpression" Type="String" />
            <asp:Parameter Name="startRowIndex" Type="Int32" />
            <asp:Parameter Name="maximumRows" Type="Int32" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

