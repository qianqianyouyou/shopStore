<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StationeryShow1.aspx.cs" Inherits="Web_User_StationeryShow1" Theme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品显示</title>
    <script language="javascript" type="text/javascript">
        //<!CDATA[
        function Boutton1_onclick() {
            Window.close();
        }
        //]]>
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
            font-size: 20px;
        }
        .auto-style2 {
            height: 21px;
            font-size: 20px;
        }
        .auto-style3 {
            width: 217px;
            font-size: 20px;
        }
        .auto-style4 {
            height: 230px;
            font-size: 20px;
        }
        .auto-style5 {
            height: 2px;
            font-size: 20px;
        }
        .auto-style6 {
            height: 23px;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 537px">
    
        <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True" HorizontalAlign="Center" Width="594px" Height="384px" >
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

     
             

     
                <table style="width:100%; height: 347px;">
                    <tr>
                        <td rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="182px" 
                                Width="207px" ImageUrl='<%# Eval("Image", "~/Web/Common/StationeryImages/{0}") %>' />
                        </td>
                        <td class="auto-style6">标题：<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ID") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">简介：<asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Usage") %>'></asp:Literal>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style5">
                         </td>
                    </tr>
                     <tr>
                        <td class="auto-style2">单价：<asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Price") %>'></asp:Literal>
                         </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
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
    
    </div>
    </form>
</body>
</html>
