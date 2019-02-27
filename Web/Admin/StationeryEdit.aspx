<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StationeryEdit.aspx.cs" Inherits="Web_Admin_StationeryEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" DefaultMode="Edit" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" OnItemUpdated="DetailsView1_ItemUpdated" OnModeChanging="DetailsView1_ModeChanging" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="商品号" SortExpression="ID" />
                <asp:TemplateField HeaderText="类别" SortExpression="CatID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Name" DataValueField="CatID" SelectedValue='<%# Bind("CatID") %>'>
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="FindSsCategories" TypeName="SsCategoryBLL"></asp:ObjectDataSource>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CatID") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CatID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="商品名" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="单价" SortExpression="Price" />
                <asp:TemplateField HeaderText="用途" SortExpression="Usage">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="261px" Text='<%# Bind("Usage") %>' TextMode="MultiLine" Width="304px"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Usage") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Usage") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Brand" HeaderText="商标" SortExpression="Brand" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="SsStationery" OnUpdated="ObjectDataSource1_Updated" SelectMethod="FindSsStationery" TypeName="SsStationeryBLL" UpdateMethod="EditSsStationery">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
