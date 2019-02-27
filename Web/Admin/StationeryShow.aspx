<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StationeryShow.aspx.cs" Inherits="Web_User_StationeryShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 358px;
        }
        .auto-style2 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <center>
            &nbsp;<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333">
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
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Bind("ID") %>' />
                    <br />
                    CatID:
                    <asp:Label ID="CatIDLabel" runat="server" Text='<%# Bind("CatID") %>' />
                    <br />
                    SsCategory:
                    <asp:Label ID="SsCategoryLabel" runat="server" Text='<%# Bind("SsCategory") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Image:
                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Usage:
                    <asp:Label ID="UsageLabel" runat="server" Text='<%# Bind("Usage") %>' />
                    <br />
                    Brand:
                    <asp:Label ID="BrandLabel" runat="server" Text='<%# Bind("Brand") %>' />
                    <br />
                </ItemTemplate>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:FormView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindSsStationerys" TypeName="SsStationeryBLL">
                <SelectParameters>
                    <asp:Parameter Name="catID" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="sortExpression" Type="String" />
                    <asp:Parameter Name="startRowIndex" Type="Int32" />
                    <asp:Parameter Name="maximumRows" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <input id="Button1" type="button" value="关闭" onclick="window.location = 'StationeryManage.aspx'" /></center>
        </div>
    </form>
    <%--<script type="text/javascript">
        function Button1_onclick() {
            window.href = "~/Web/Admin/StationeryManage.aspx";
        }
    </script>--%>
</body>
</html>
