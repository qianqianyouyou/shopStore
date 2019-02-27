using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_User_UserRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SsUserBLL ssUserBLL = new SsUserBLL();
        SsUser ssUser = new SsUser();
        ssUser.Username = "";
        ssUser.Password = "";
        ssUser.Realname = "";
        ssUser.Phone = "";
        ssUser.Address = "";
        ssUser.Zipcode = "";
        ssUser.Email = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SsUserBLL ssUserBLL = new SsUserBLL();
        SsUser ssUser = new SsUser();
        ssUser.Username = TextBoxUserName.Text;
        ssUser.Password = TextBoxPassword.Text;
        ssUser.Realname = TextBoxRename.Text;
        ssUser.Phone = TextBoxPhone.Text;
        ssUser.Address = TextBoxAdress.Text;
        ssUser.Zipcode = TextBoxZip.Text;
        ssUser.Role = 1;
        ssUser.Email = TextBoxEmaill.Text;
        ssUserBLL.AddSsUser(ssUser);
  this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('添加失败，上传图片文件大小不能超过2MB.')", true);
    }
}