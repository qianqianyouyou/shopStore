using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = " <br/>";
        Label1.Text += "访问人数" + Application["AccessCount"] +9+ "&nbsp;&nbsp";
        //Label1.Text += "当前在线" + Membership.GetNumberOfUsersOnline();
        Label1.Text += "<br/>版权所有";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text = " <br/>";
        Label1.Text += "访问人数" + Application["AccessCount"]+9 + "&nbsp;&nbsp";
       // Label1.Text += "当前在线" + Membership.GetNumberOfUsersOnline();
        Label1.Text += "<br/>版权所有";
    }
}
