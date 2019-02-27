using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Content1 : System.Web.UI.Page
{

    private SsCartItemDAL ssCartItemDAL = new SsCartItemDAL();

    protected void btn_add_OnClick(object sender, EventArgs e)
    {
        var id = Convert.ToInt32(((Button)sender).CommandArgument);
        try
        {
             ssCartItemDAL.AddCartItem(id);
        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), " message", "<script language='javascript' >alert('');</script>");
            
        }
        //if (ssCartItemDAL.AddCartItem(id))
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), " message", "<script language='javascript' >alert('123');</script>");
        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), " message", "<script type='text/javascript'>alert('加入购物车失败！');</script>");
        //}
    }
}