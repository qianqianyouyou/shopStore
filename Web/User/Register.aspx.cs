using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_User_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        SsUserBLL ssUserBLL  = new SsUserBLL();
        SsUser ssUser = new SsUser();
        ssUser.Username= TextBoxUserName.Text;
        ssUser.Password= TextBoxPassword.Text;
        ssUser.Realname = TextBoxRename.Text;
        ssUser.Phone= TextBoxPhone.Text;
        ssUser.Address = TextBoxAdress.Text;
        ssUser.Zipcode= TextBoxZip.Text;
        ssUser.Role = Convert.ToInt32(TextBoxMember.Text);
        ssUser.Email = TextBoxEmaill.Text;
        ssUserBLL.AddSsUser(ssUser);
        Response.Write("<script>alert('注册成功!')</script>");
  

    } 
}