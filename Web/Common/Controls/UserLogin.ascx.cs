using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Message = System.Web.Services.Description.Message;

public partial class Web_Common_Controls_UserLogin : System.Web.UI.UserControl
{
    private ISsUserDAL iSsUserDal = new UserDAL();
    private SsUser ssUser = new SsUser();
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string username = ((TextBox)LoginView1.FindControl("Login1").FindControl("UserName")).Text;
        string password = ((TextBox)LoginView1.FindControl("Login1").FindControl("Password")).Text;
        string p = iSsUserDal.FindSsUser(username).Password;
        if (password != p)
        {
            ((Literal)LoginView1.FindControl("Login1").FindControl("WrongText")).Text = "用户名或密码错误！";
        }
        else if (((String)Session["code"]) == ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Text || ((String)Session["code"]) == ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Text.ToUpper())
       {
           FormsAuthentication.SetAuthCookie(username, true);
    ((Literal)LoginView1.FindControl("Login1").FindControl("WrongText")).Text = "登录成功！";
       }
        ((TextBox)LoginView1.FindControl("Login1").FindControl("UserName")).Focus();
    }
    protected void  Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
        if (((String)Session["code"]) != ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Text && ((String)Session["code"]) != ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Text.ToUpper())
        {
          ((Literal)LoginView1.FindControl("Login1").FindControl("FailureText")).Text = "验证码错误！";
            ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Focus();
            e.Cancel = true;
            
        }
        if (((String)Session["code"]) == ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Text || ((String)Session["code"]) == ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Text.ToUpper())
        {
           ((TextBox)LoginView1.FindControl("Login1").FindControl("TextBox1")).Focus();
           e.Cancel = true;
        }
    }
    public virtual ITemplate LoggedInTemplate { get; set; }
    protected void LoginView1_ViewChanged(object sender, EventArgs e)
    {

    }

   
}