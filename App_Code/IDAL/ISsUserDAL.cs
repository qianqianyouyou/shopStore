using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsUserDAL 的摘要说明
/// </summary>
public interface ISsUserDAL
{
    int AddSsUser(SsUser ssUser);
    void DeleteSsUser(int id);
    int EditSsUser(SsUser ssUser);
    SsUser FindSsUser(int id);
    SsUser FindSsUser(string username, string passeord);
    SsUser FindSsUser(string username);

    IList<SsUser> FindSsUsers(string username);
}