using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Common_Code : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string code = CreateRandomCode(4);
        Session["code"] = code;
        CreateImage(code);

    }

    private string CreateRandomCode(int codeCount)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,W,X,Y,Z";
        string[] allCharArray = allChar.Split(',');
        string randomCode = "";
        Random rand = new Random((int)DateTime.Now.Ticks);
        for (int i = 0; i < 4; i++)
        {
            int t = rand.Next(35);
            randomCode += allCharArray[t];
        }
        return randomCode;
    }

    private void CreateImage(string checkCode)
    {
        int iwidth = (int)(checkCode.Length * 11.5);
        Bitmap bitmap = new Bitmap(iwidth, 20);
        Graphics g = Graphics.FromImage(bitmap);
        Font f = new System.Drawing.Font("Arial", 10, System.Drawing.FontStyle.Bold);
        Brush b = new System.Drawing.SolidBrush(Color.White);
        g.Clear(Color.Green);
        g.DrawString(checkCode, f, b, 2, 2);
        bitmap.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);
        g.Dispose();
        bitmap.Dispose();
    }
}