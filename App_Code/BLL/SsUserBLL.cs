using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///SsUserBLL 的摘要说明
/// </summary>
public class SsUserBLL : ISsUserBLL
{
    private ISsUserDAL SsUserDAL = new UserDAL();
    public int AddSsUser(SsUser SsUser)
    {
        return SsUserDAL.AddSsUser(SsUser);
    }
    public int EditSsUser(SsUser SsUser)
    {
        return SsUserDAL.EditSsUser(SsUser);
    }
    public void DeleteSsUser(int id)
    {
        SsUserDAL.DeleteSsUser(id);
    }

    public SsUser FindSsUser(string username, string password)
    {
        return SsUserDAL.FindSsUser(username, password);
    }

    public SsUser FindSsUser(int id)
    {
        return SsUserDAL.FindSsUser(id);
    }

    public IList<SsUser> FindSsUsers(string username)
    {
        return SsUserDAL.FindSsUsers(username);
    }
}