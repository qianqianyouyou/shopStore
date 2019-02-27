using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///SsStationeryBLL 的摘要说明
/// </summary>
public class SsStationeryBLL:ISsStationeryBLL
{
    private ISsStationeryDAL SsStationeryDAL = new SsStationeryDAL();
    public int AddSsStationery(SsStationery SsStationery)
    {
        return SsStationeryDAL.AddSsStationery(SsStationery);
    }
    public int EditSsStationery(SsStationery SsStationery)
    {
        return SsStationeryDAL.EditSsStationery(SsStationery);
    }
    public int DeleteSsStationery(int id)
    {
        return SsStationeryDAL.DeleteSsStationery(id);
    }

    public SsStationery FindSsStationery(int id)
    {
        return SsStationeryDAL.FindSsStationery(id);
    }
    public int FindCount(int catID, string name,string brand)
    {
        return SsStationeryDAL.FindCount(catID, name, brand);
    }

    public IList<SsStationery> FindSsStationerys(int catID, string name,string brand, string sortExpression, int startRowIndex,
        int maximumRows)
    {
        return SsStationeryDAL.FindSsStationerys(catID, name,brand, sortExpression, startRowIndex, maximumRows);
    }
}