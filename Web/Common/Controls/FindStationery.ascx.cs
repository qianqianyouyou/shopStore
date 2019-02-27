using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Common_Controls_FindStationery : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FindButton_Click(object sender, EventArgs e)
    {
        if (RadFindFlag.SelectedValue == "0")
        {
            Session["name"] = TxtFindText.Text;
            Session["author"] = "";

        }
        else
        {
            Session["name"] = "";
            Session["author"] = TxtFindText.Text;
        }
        Response.Redirect("~/Web/User/StationeryFind.aspx");
    }
}