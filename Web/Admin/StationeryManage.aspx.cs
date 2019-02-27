using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Admin_StationeryManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SsUser user = (SsUser) Session["user"];
     //   if (user != null || user.Role != 1)
        {
          // this.ClientScript.RegisterClientScriptBlock(this.GetType(),"","alert('您没有登录或不是管理员，无权进入');window.location.href='../../Content1.aspx'",true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SstationeryAdd.aspx");
    }
   
}