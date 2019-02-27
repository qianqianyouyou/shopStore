<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserLogin.ascx.cs" Inherits="Web_Common_Controls_UserLogin" %>


    <style type="text/css">
        .auto-style2 {
            width: 155px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style10 {
            width: 89px;
        }
        .auto-style18 {
            width: 279px;
        }
        .auto-style19 {
            width: 312px;
        }
    </style>


    <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
<anonymoustemplate>
        <asp:Login ID="Login1" runat="server" BackColor="#E6E2D8" FailureText="登录失败！" 
            Font-Size="12px" Width="167px" TitleText=""  onloggingin="Login1_LoggingIn" Height="154px" >
           
            <TextBoxStyle Width="100px" />
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="width:180px; height: 148px;">
                                <tr>
                                    <td align="center" colspan="2">
                                        登录</td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style19" style="width: 80px">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名：</asp:Label>
                                    </td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="UserName" runat="server" Width="102px" style="margin-left: 5px" ></asp:TextBox>
                                    </td>
                                          <td align="right">
                                         <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                                            ValidationGroup="ctl00$ctl00$Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                                
                                <tr>
                                    <td align="right" class="auto-style18"  style="width: 70px;">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码：</asp:Label>
                                    </td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="104px" style="margin-left: 6px"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                          <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                                            ValidationGroup="ctl00$ctl00$Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                             
                                <tr>
                                    <td align="right" class="auto-style19"   style="width: 70px;">
                                        <asp:Label ID="Label1" runat="server" Text="验证码："></asp:Label>
                                    </td>
                                    <td class="auto-style10">
                                        <asp:TextBox runat="server" ID="TextBox1" style="width:55px"/>
                                        <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/Web/Common/Code.aspx" />                                     
                                    </td>
                                </tr>
                     
                                <tr>
                                    <td colspan="2" class="auto-style5">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我" />
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" OnClick="LoginButton_Click" Text="登录" ValidationGroup="ctl00$ctl00$Login1" Width="70px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;" class="auto-style2">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                         <asp:Literal ID="WrongText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
    </anonymoustemplate>
    <loggedintemplate>
        <asp:Panel ID="Panel1" runat="server" BackColor="#E6E2D8" Width="190px" Height="90px" Font-Size="large" style="margin-right: 0px">
            <asp:Label ID="Label6" runat="server" Text="Label">欢迎登陆! </asp:Label>
        <br/>
            <asp:LoginStatus ID="LoginStatus1" runat="server" ForeColor="#FF9933"/>&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/Web/User/EditPassword.aspx" ForeColor="#FF9933" Font-Size="large">修改密码</asp:HyperLink>
            
        </asp:Panel>
    </loggedintemplate>
</asp:LoginView>

