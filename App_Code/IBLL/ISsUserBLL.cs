using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsUserBLL 的摘要说明
/// </summary>
public interface ISsUserBLL
{
    int AddSsUser(SsUser ssUser);
    void DeleteSsUser(int id);
    int EditSsUser(SsUser ssUser);
    SsUser FindSsUser(int id);
    SsUser FindSsUser(string username, string passeord);
    IList<SsUser> FindSsUsers(string username);
}