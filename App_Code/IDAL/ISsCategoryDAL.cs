using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsCategoryDAL 的摘要说明
/// </summary>
public interface ISsCategoryDAL
{
    int AddSsCategory(SsCategory ssCategory);
    int DeleteSsCategory(int id);
    int EditSsCategory(SsCategory ssCategory);
    IList<SsCategory> FindSsCategories();
}