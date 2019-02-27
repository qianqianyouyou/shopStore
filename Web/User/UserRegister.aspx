<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="Web_User_UserRegister"  Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 19%; height: 404px; font-size: larger;" align="center"  >
        <tr>
            <td class="auto-style1" colspan="2" style="font-size: larger;"><center>新用户注册 </center></td>
        </tr>
        <tr>
            <td class="auto-style20">用户名:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="208px" Height="21px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBoxUserName" runat="server" 
                        ErrorMessage="*" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">密码：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxPassword" runat="server" Width="209px" Height="20px" TextMode="Password "></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                  ControlToValidate="TextBoxPassword"  ErrorMessage="*" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">真实姓名：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxRename" runat="server" Width="208px" Height="23px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">邮箱：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxEmaill" runat="server" Width="202px" Height="21px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ErrorMessage="*"  ControlToValidate="TextBoxEmaill" ValidationExpression="([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxEmaill" runat="server" 
                    ErrorMessage="*" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">电话：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxPhone" runat="server" Width="197px" Height="19px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBoxPhone" ValidationExpression="(13[0-9]|14[0-9]|15[0-9]|18[0-9]|17[0-9])\d{8}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBoxPhone"></asp:RequiredFieldValidator>
            </td>           
        </tr>
        <tr>
            <td class="auto-style20">地址：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxAdress" runat="server" Width="200px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">提示密码：</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxZip" runat="server" Width="196px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>  
            <td class="auto-style2" colspan="2">
                <center>
                <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" style="text-align: center" Text="注册" OnClientClick="history.go(-1);alert('注册成功 ，可以登录了！ ')" Width="153px" CssClass="subButton"  UseSubmitBehavior="False" CausesValidation="False" Height="24px" BackColor="White" BorderColor="White" ForeColor="#FF6600"  />
                </center>
           </td>
        </tr>
    </table> 
</asp:Content>

