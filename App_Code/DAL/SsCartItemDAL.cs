using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// SsCartItem 的摘要说明
/// </summary>
public class SsCartItemDAL:ISsCartItemDAL
{
    public SsCartItemDAL()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public IList<SsCartItem1> FindAllCartItems()
    {
        IList<SsCartItem1> list = new List<SsCartItem1>();
        string sql = "select * from SsCartItem";
        DataTable dt = SqlHelper.ExecuteQuery(sql);
        if (dt != null)
        {
            SsCartItem1 c = null;
            foreach (DataRow row  in dt.Rows)
            {
                c = new SsCartItem1();
                c.ID = Int32.Parse(row["Id"].ToString());
                c.Name = row["Name"].ToString();
                c.Price = Convert.ToDecimal(row["Price"].ToString());
                c.Quantity = Int32.Parse(row["Quantity"].ToString());
                list.Add(c);
            }
        }
        return list;
    }


    public bool AddCartItem(int  Id)
    {
        String sql = "INSERT   INTO   SsCartItem (Id,Name,Image,Price,quantity)   SELECT   ID,Name,Image,Price,1  FROM   SsStationery where ID=" + Id;
        DataTable dt = SqlHelper.ExecuteQuery(sql);
        if (dt != null)
        {
            return true;
        }
        else return false;
    }
}