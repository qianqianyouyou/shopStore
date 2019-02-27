<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Web_User_Register"  Theme="Theme1"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 69px;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style4 {
            height: 36px;
            width: 88px;
        }
        .auto-style6 {
            height: 36px;
            width: 113px;
        }
        .auto-style7 {
            height: 29px;
            width: 88px;
        }
        .auto-style8 {
            height: 29px;
            width: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 42%; height: 732px;" align="center">
        <tr>
            <td class="auto-style1" colspan="2" >新用户注册</td>
        </tr>
        <tr>
            <td class="auto-style7">用户名：</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">密码：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxPassword" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">真实姓名：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxRename" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">邮箱：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxEmaill" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">电话：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxPhone" runat="server" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">地址：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxAdress" runat="server" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">提示密码：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxZip" runat="server" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">角色：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxMember" runat="server" Width="198px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" style="text-align: center" Text="注册" Width="56px" CssClass="subButton"  UseSubmitBehavior="False" CausesValidation="False"  />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
