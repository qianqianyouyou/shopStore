using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsCategoryBLL 的摘要说明
/// </summary>
public interface ISsCategoryBLL
{
    int AddSsCategory(SsCategory ssCategory);
    int DeleteSsCategory(int id);
    int EditSsCategory(SsCategory ssCategory);
    IList<SsCategory> FindSsCategories();
}