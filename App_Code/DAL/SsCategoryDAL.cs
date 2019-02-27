using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
///SsCategoryDAL 的摘要说明
/// </summary>
public class SsCategoryDAL:ISsCategoryDAL
{
    public int AddSsCategory(SsCategory ssCategory)
    {
        string sql = String.Format("insert into SsCategory(name) values('{0}')", ssCategory.Name);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public int EditSsCategory(SsCategory ssCategory)
    {
        string sql = String.Format("update SsCategory set Name='{0}' where CatId={1}", ssCategory.Name, ssCategory.CatID);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public int DeleteSsCategory(int id)
    {
        string sql = String.Format("delete from SsCategory where id={0}", id);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public IList<SsCategory> FindSsCategories()
    {
        IList<SsCategory> list = new List<SsCategory>();
        string sql = "select * from SsCategory";
        DataTable dt = SqlHelper.ExecuteQuery(sql);
        if (dt != null)
        {
            SsCategory c = null;
            foreach (DataRow row in dt.Rows)
            {
                c = new SsCategory();
                c.CatID = Int32.Parse(row["Catid"].ToString());
                c.Name = row["name"].ToString();
                list.Add(c);
            }
        }
        return list;
    }
}