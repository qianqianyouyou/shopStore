using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsStationeryBLL 的摘要说明
/// </summary>
public interface ISsStationeryBLL
{
    int AddSsStationery(SsStationery ssStationery);
    int DeleteSsStationery(int id);
    int EditSsStationery(SsStationery ssStationery);
    SsStationery FindSsStationery(int id);

    IList<SsStationery> FindSsStationerys(int catID, string name,string brand, string sortExpression, int startRowIndex,
        int maximumRows); 
    int FindCount(int catID, string name,string brand);
}