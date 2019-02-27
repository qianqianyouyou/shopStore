<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net" %>

<script runat="server">
    
    public void Profile_ProfileAutoSaving(object sender,ProfileAutoSaveEventArgs args)
    {
       // if (Profile.ISsCartBLL.HasChanged)
        {
            args.ContinueWithProfileAutoSave=true;
        }
      //  else
        {
            args.ContinueWithProfileAutoSave=false;
        }
    }
     
    void Application_Start(object sender, EventArgs e)
    {
        string connectString = ConfigurationManager.ConnectionStrings["connectString"].ConnectionString;
        SqlCacheDependencyAdmin.EnableNotifications(connectString);
        SqlCacheDependencyAdmin.EnableTableForNotifications(connectString,"SsCategory");
        SqlDependency.Start(connectString);
        Application["AccessCount"] = 1;
        Application["OnlineCount"] = 1;
        string file = Server.MapPath("AccessCount.txt");
        if (File.Exists(file))
        {
            StreamReader sr = File.OpenText(file);
            Application["AccessCount"] = Int32.Parse(sr.ReadLine());
            sr.Close();
        }
        else
        {
            StreamWriter sw = File.CreateText(file);
            sw.WriteLine("1");
            sw.Close();
        }


    }
    //  在应用程序关闭时运行的代码
    void Application_End(object sender, EventArgs e)
    {
        string connectString = ConfigurationManager.ConnectionStrings["connectString"].ConnectionString;
        SqlCacheDependencyAdmin.EnableNotifications(connectString);
        SqlCacheDependencyAdmin.EnableTableForNotifications(connectString, "SsCategory");
        SqlDependency.Stop(connectString);
        string file = Server.MapPath("AccessCount.txt");
        StreamWriter sw = new StreamWriter(file);
        sw.WriteLine(Application["AccessCount"].ToString());
        sw.Close();

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // 在出现未处理的错误时运行的代码

    }
    
    // 在新会话启动时运行的代码
    void Session_Start(object sender, EventArgs e) 
    {
       Application.Lock();

      // Application["OnlineCount"] = (int)Application["OnlineCount"]+1;

      // Application["AccessCount"] =(int)Application["AccessCount"]+ 1;
       Application["AccessCount"] = 1;
       Application["OnlineCount"] = 1;
        Application.UnLock();

    }
    // 在会话结束时运行的代码。 
    // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
    // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer
    // 或 SQLServer，则不引发该事件。
    void Session_End(object sender, EventArgs e) 
    {
        Application.Lock();
        Application["OnlineCount"] = (int) Application["OnlineCount"] - 1;
        Application.UnLock();

    }
       
</script>
