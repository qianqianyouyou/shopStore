<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StationeryShow.aspx.cs" Inherits="Web_User_StationeryShow" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            font-size: 20px;
            width: 3px;
        }
        .auto-style21 {
            font-size: 20px;
            height: 236px;
            width: 324px;
        }
        .auto-style22 {
            font-size: 20px;
            height: 51px;
            width: 324px;
        }
        .auto-style23 {
            font-size: 20px;
            width: 324px;
            height: 65px;
        }
        
        .auto-style24 {
            width: 324px;
             font-size: 20px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True" HorizontalAlign="Center" Width="881px" Height="399px" >
            <EditItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                CatID:
                <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
                <br />
                SsCategory:
                <asp:TextBox ID="SsCategoryTextBox" runat="server" Text='<%# Bind("SsCategory") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Usage:
                <asp:TextBox ID="UsageTextBox" runat="server" Text='<%# Bind("Usage") %>' />
                <br />
                Brand:
                <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                CatID:
                <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
                <br />
                SsCategory:
                <asp:TextBox ID="SsCategoryTextBox" runat="server" Text='<%# Bind("SsCategory") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Usage:
                <asp:TextBox ID="UsageTextBox" runat="server" Text='<%# Bind("Usage") %>' />
                <br />
                Brand:
                <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />

     
             

     
                <table style="width:110%; height: 389px;">
                    <tr>
                        <td rowspan="4" class="auto-style20">
                            <asp:Image ID="Image1" runat="server" Height="300px" 
                                Width="300px" ImageUrl='<%# Eval("Image", "~/Web/Common/StationeryImages/{0}") %>' />
                        </td>
                        <td class="auto-style24">商品编号：<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ID") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">简介：<asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Usage") %>'></asp:Literal>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style23">单价：<asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Price") %>'></asp:Literal>
                         </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            商标：<asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Brand") %>'></asp:Literal>
                            <br />
                        </td>
                    </tr>
                </table>

     
             

     
                <br />
            </ItemTemplate>
        </asp:FormView>
     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindSsStationery" TypeName="SsStationeryBLL">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
       <center> <a href="/Content1.aspx" class="font" style="font-size: 20px; font-family: 'Microsoft YaHei';color:orange">返回主页面查看</a></center>
           
        <br />
</asp:Content>

