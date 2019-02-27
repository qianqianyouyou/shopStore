<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .style1
        {
            width: 100%;
            text-align:center;
            margin:auto 0;
        }
        .style2
        {
            width: 100px;
            height: 151px;
        }
        .style3
        {
            width: 100px;
            }
        .style5
        {
            height: 84px;
            text-align:left;
        }
        .style6
        {
            width: 100px;
            height: 34px;
        }
        .style7
        {
            height: 34px;
            text-align:left;
        }
        .style8
        {
            width: 100px;
            height: 45px;
        }
        .style9
        {
            height: 72px;
            text-align:left;
        }
        .style10
        {
            width: 100px;
            height: 187px;
        }
        .style11
        {
            height: 187px;
            text-align:left;
        }
        .style12
        {
            width: 100px;
            height: 89px;
        }
        .style13
        {
            height: 89px;
            text-align:left;
        }
        .style14
        {
            width: 100px;
            height: 119px;
        }
        .style15
        {
            height: 119px;
            text-align:left;
        }
        .style16
        {
            height: 151px;
            text-align:left;
        }
        .style17
        {
            height: 45px;
            text-align:left;
        }
        .auto-style1 {
            width: 120px;
            height: 34px;
        }
        .auto-style2 {
            width: 120px;
            height: 45px;
        }
        .auto-style3 {
            width: 120px;
        }
        .auto-style4 {
            width: 120px;
            height: 187px;
        }
        .auto-style5 {
            width: 120px;
            height: 89px;
        }
        .auto-style6 {
            width: 120px;
            height: 119px;
        }
        .auto-style7 {
            width: 120px;
            height: 151px;
        }
    </style>
</head>
<body>
    <h3 style=" text-align:center;">商品信息征集</h3>
    <form id="form1" runat="server">
    <div>
        <table border="1" cellpadding="2" cellspacing="0" width="577" align="center" style="font-size: 12px;
        line-height: 25px;">
            <tr>
                <td class="auto-style1">
                    商品名称</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="不可为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    购买时间</td>
                <td class="style17">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="不可为空" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3" rowspan="2">
                    商品反馈</td>
                <td class="style9">
                    商品质量：<br /><br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>很好</asp:ListItem>
                        <asp:ListItem>好</asp:ListItem>
                        <asp:ListItem>一般</asp:ListItem>
                        <asp:ListItem>差</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="必须选择商品质量！" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    吸引您购买此商品品的原因：
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3">
                        <asp:ListItem>生产厂家</asp:ListItem>
                        <asp:ListItem>相关介绍</asp:ListItem>
                        <asp:ListItem>他人推荐</asp:ListItem>
                        <asp:ListItem>外观设计</asp:ListItem>
                        <asp:ListItem>售后服务</asp:ListItem>
                        <asp:ListItem>价格优惠</asp:ListItem>
                    </asp:CheckBoxList>

                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    购买信息</td>
                <td class="style11">
                    1、了解商品的途径：<br /><br />
                    <asp:ListBox ID="ListBox1" runat="server" Height="95px" Width="195px" SelectionMode="Multiple">
                        <asp:ListItem>朋友推荐</asp:ListItem>
                        <asp:ListItem>特产商店挑选</asp:ListItem>
                        <asp:ListItem>网上查询</asp:ListItem>
                        <asp:ListItem>店员推荐</asp:ListItem>
                        <asp:ListItem>媒体广告</asp:ListItem>
                    </asp:ListBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="必须选择了解本书途径！" ControlToValidate="ListBox1"></asp:RequiredFieldValidator>
                    <br /><br />
                    2、购买渠道：
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="必须填写购买渠道！" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <br /><br />
                    3、能接受的商品价格：
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ErrorMessage="不可为空！" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="必须是数值型！" ControlToValidate="TextBox4" Type="Double"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    商品服务</td>
                <td class="style13">
                    您对此商品发行售后服务评价是：<br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>非常满意</asp:ListItem>
                        <asp:ListItem>满意</asp:ListItem>
                        <asp:ListItem>一般</asp:ListItem>
                        <asp:ListItem>不满意</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    宝贵意见</td>
                <td class="style15">
                    <asp:TextBox ID="TextBox5" runat="server" Height="80px" Width="405px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    买家信息</td>
                <td class="style16">
                    姓名：<asp:TextBox ID="TextBox6" runat="server" Width="104px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="不可为空" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                <br />
                年龄：<asp:TextBox ID="TextBox7" runat="server" Width="33px">
                </asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ErrorMessage="年龄要在0-100之间！" MaximumValue="100" MinimumValue="0" type="Integer"
                    ControlToValidate="TextBox7"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="不可为空！" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                <br />
                电话：<asp:TextBox ID="TextBox8" runat="server">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="格式错误" ControlToValidate="TextBox8" ValidationExpression="(13[0-9]|14[0-9]|15[0-9]|18[0-9]|17[0-9])\d{8}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="不可为空" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                <br />
                邮编：<asp:TextBox ID="TextBox9" runat="server" Width="77px">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="格式错误" ValidationExpression="[1-9][0-9]{5}|\d{6}" ControlToValidate="TextBox9"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="不可为空！" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                <br />
                邮件地址：<asp:TextBox ID="TextBox10" runat="server" Width="217px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="格式错误！" ControlToValidate="TextBox10" ValidationExpression="([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="不可为空！" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                    </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" Width="77px" />
    &nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
