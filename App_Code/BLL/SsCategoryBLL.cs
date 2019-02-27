using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
///SsCategory 的摘要说明
/// </summary>
public class SsCategoryBLL:ISsCategoryBLL
{
   /* public int AddSsCategory(string name)
    {
        SqlConnection con = ConnectDB.Connect();
        string sql = String.Format("insert into SsCategory(name) values('{0}')", name);
        SqlCommand cmd=new SqlCommand(sql,con);
        con.Open();
        int num = cmd.ExecuteNonQuery();
        con.Close();
        return num;
    }

    public int EditSsCategory(int id,string name)
    {
        SqlConnection con = ConnectDB.Connect();
        string sql = String.Format("update SsCategory set name= '{0}' where id={1}",id, name);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int num = cmd.ExecuteNonQuery();
        con.Close();
        return num;
    }

    public int DeleteSsCategory(int id)
    {
        SqlConnection con = ConnectDB.Connect();
        string sql = String.Format("delete from SsCategory where id={0}", id);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int num = cmd.ExecuteNonQuery();
        con.Close();
        return num;
    }

    public DataSet FindSsCategories()
    {
        SqlConnection con = ConnectDB.Connect();
        string sql = String.Format("select * from SsCategory");
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter da=new SqlDataAdapter(cmd);
        DataSet ds=new DataSet();
        da.Fill(ds);
        return ds;
    }*/
    public SsCategoryBLL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    
    private ISsCategoryDAL SsCategoryDAL = new SsCategoryDAL();
    public int AddSsCategory(SsCategory SsCategory)
    {
       return SsCategoryDAL.AddSsCategory(SsCategory);
    }
    public int EditSsCategory(SsCategory SsCategory)
    {
        return SsCategoryDAL.EditSsCategory(SsCategory);
     }
    public int DeleteSsCategory(int id)
    {
        return SsCategoryDAL.DeleteSsCategory(id);
    }

    public IList<SsCategory> FindSsCategories()
    {
       return SsCategoryDAL.FindSsCategories();
    }
}