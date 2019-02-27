<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SstationeryAdd.aspx.cs" Inherits="Web_Admin_SstationeryAdd" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" 
        AutoGenerateInsertButton="True" AutoGenerateRows="False" CellPadding="4" 
        DataSourceID="ObjectDataSource1" DefaultMode="Insert" 
        EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="300px" 
        HorizontalAlign="Center"  
         Width="222px" >
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="50px" />
        <Fields>
            <asp:TemplateField HeaderText="类别" SortExpression="CatID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CatID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="ObjectDataSource2" DataTextField="Name" DataValueField="CatID" 
                        Height="79px" SelectedValue='<%# Bind("CatID") %>' Width="104px">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        SelectMethod="FindSsCategories" TypeName="SsCategoryBLL">
                    </asp:ObjectDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CatID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="特产品名" SortExpression="Name" />
            <asp:TemplateField HeaderText="图片" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Image") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" />
            <asp:TemplateField HeaderText="用途" SortExpression="Usage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Usage") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Height="61px" 
                        Text='<%# Bind("Usage") %>' TextMode="MultiLine" Width="211px"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Usage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Brand" HeaderText="商标" SortExpression="Brand" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DataObjectTypeName="SsStationery" InsertMethod="AddSsStationery" 
         SelectMethod="FindSsStationery" 
        TypeName="SsStationeryBLL">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

