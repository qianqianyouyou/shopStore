using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("办公用品名称：" + TextBox1.Text + "<br />");
        Response.Write("购买时间：" + TextBox2.Text + "<br />");
        Response.Write("您认为此办公用品的质量是：" + RadioButtonList1.SelectedValue + "<br />");
        string str1 = "吸引您购买此办公用品的原因：";
        foreach (ListItem item in CheckBoxList1.Items)
            if (item.Selected)
                str1 += "<br />&nbsp;&nbsp;&nbsp;&nbsp;" + item.Value;
        Response.Write("吸引您购买此办公用品的原因是：" + str1 + "<br />");
        string str2 = "了解此办公用品的途径：";
        foreach (ListItem item in ListBox1.Items)
            if (item.Selected)
                str2 += "<br />&nbsp;&nbsp;&nbsp;&nbsp;" + item.Value;
        Response.Write(str2 + "<br />");


        Response.Write("购买渠道：" + TextBox3.Text + "<br />");
        Response.Write("能接受的办公用品价格：" + TextBox4.Text + "<br />");
        Response.Write("您对此办公用品发行售后服务评价是：" + DropDownList1.SelectedValue + "<br />");
        Response.Write("您的宝贵意见：" + TextBox5.Text + "<br />");
        Response.Write("姓名：" + TextBox6.Text + "<br />");
        Response.Write("年龄：" + TextBox7.Text + "<br />");
        Response.Write("电话：" + TextBox8.Text + "<br />");
        Response.Write("邮编：" + TextBox9.Text + "<br />");
        Response.Write("邮件地址：" + TextBox10.Text + "<br />");
    }
}