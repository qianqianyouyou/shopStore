using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
///SsStationeryDAL 的摘要说明
/// </summary>
public class SsStationeryDAL:ISsStationeryDAL
{

    public int AddSsStationery(SsStationery ssStationery)
    {
        string sql = String.Format("insert into SsStationery(catID,name,image,price,usage,brand) values({0},'{1}','{2}',{3},'{4}','{5}')", ssStationery.CatID,
ssStationery.Name, ssStationery.Image, ssStationery.Price, ssStationery.Usage,ssStationery.Brand);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public int EditSsStationery(SsStationery ssStationery)
    {
        string sql = String.Format("update SsStationery set CatID={0},Name='{1}',Price={2},Usage='{3}',Brand='{4}' where ID={5}", ssStationery.CatID,
ssStationery.Name, ssStationery.Price, ssStationery.Usage,ssStationery.Brand,ssStationery.ID);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public int DeleteSsStationery(int id)
    {
        string sql = String.Format("delete from SsStationery where id={0}", id);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public SsStationery FindSsStationery(int id)
    {
        SsStationery SsStationery = null;
        string sql = String.Format("select a.name as CatName,b.* from SsCategory a,SsStationery b where a.catID=b.catID and b.id = {0}", id);
        SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
        if (sdr.Read())
        {
            SsStationery = new SsStationery(sdr.GetString(0), sdr.GetInt32(1), sdr.GetInt32(2), sdr.GetString(3), sdr.GetString(4), sdr.GetDecimal(5), sdr.GetString(6), sdr.GetString(7));
        }
        sdr.Close();
        return SsStationery;
    }

    public int FindCount(int catID, string name,string brand)
    {
        string sql = String.Format("select count(*) from SsStationery where {0} catID like '%{1}%' and brand like '%{2}%'", (catID == 0 ? "" : "catID=" + catID + "and"), name,brand);
        return (int)SqlHelper.ExecuteScalar(sql);

    }

    public IList<SsStationery> FindSsStationerys(int catID, string name,string brand, string sortExpression, int startRowIndex,
        int maximumRows)
    {
        IList<SsStationery> list=new List<SsStationery>();
        string sort = "";
        if (!String.IsNullOrEmpty(sortExpression))
        {
            sort = string.Format("order by b.{0}", sortExpression);
        }
        string sql =
            String.Format(
                "select a.name as CatName,b.* from SsCategory a,SsStationery b where a.CatID=b.catID and {0} b.catID like '%{1}%' and b.brand like '%{2}%' {3}",
                (catID == 0 ? "" : "b.catID=" + catID + "and"), name, brand, sort);
        DataTable dt = SqlHelper.ExecuteQuery(sql, startRowIndex, maximumRows);
        if (dt != null)
        {
            SsStationery ssStationery = null;
            foreach (DataRow row in dt.Rows)
            {
                ssStationery=new SsStationery();
                ssStationery.SsCategory.Name = row["CatName"].ToString();
                ssStationery.ID = Int32.Parse(row["id"].ToString());
                ssStationery.CatID = Int32.Parse(row["catID"].ToString());
                ssStationery.Name = row["name"].ToString();
                ssStationery.Image = row["image"].ToString();
                ssStationery.Price=Decimal.Parse(row["price"].ToString());
                ssStationery.Usage = row["usage"].ToString();
                ssStationery.Brand = row["brand"].ToString();
                list.Add(ssStationery);
            }
        }
        return list;
    }

    
}