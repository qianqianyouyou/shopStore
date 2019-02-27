using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Admin_StationeryAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ObjectDataSource1_Inserted(object sender, ObjectDataSourceStatusEventArgs e)
    {
        e.AffectedRows = (int)e.ReturnValue;
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        if (e.CancelingEdit)
        {
            Response.Redirect("StationeryManage.aspx");
        }
    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        string saveDir = @"\Uploads\";
        string appPath = Request.PhysicalApplicationPath;
        FileUpload upload = ((FileUpload)DetailsView1.FindControl("FileUpload1"));
        if (upload.HasFile)
        {
            int fileSize = upload.PostedFile.ContentLength;
            if (fileSize < 2100000)
            {
                string ext = System.IO.Path.GetExtension(upload.FileName);
                if ((ext == ".jpg") || (ext == ".gif"))
                {

                    string filename = DateTime.Now.Ticks.ToString() + "." + ext;
                    string savePath = appPath + saveDir + filename;
                    upload.SaveAs(savePath);
                   ObjectDataSource1.InsertParameters["Image"].DefaultValue = filename;
                }
                else
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('添加失败，上传图片扩展名必须是.jpg或是.gif')", true);
                    e.Cancel = true;
                }
            }
            else
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('添加失败，上传图片文件大小不能超过2MB.')", true);
                e.Cancel = true;
            }
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('添加失败，上传图片文件不能为空')", true);
            e.Cancel = true;
        }
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('成功添加商品！')", true);
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception == null)
        {
            if (e.AffectedRows > 0)
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('修改成功');window.location.href='StationeryManage.aspx'", true);
                return;
            }
        }
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('修改失败');", true);

    }
 
}