using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TestConnectDB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = ConnectDB.Connect();
        try
        {
            con.Open();
            Label1.Text = "连接成功";
            con.Close();
        }
        catch
        {
            Label1.Text = "连接失败";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}