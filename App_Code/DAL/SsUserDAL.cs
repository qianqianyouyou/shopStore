using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
///UserDAL 的摘要说明
/// </summary>
public class UserDAL:ISsUserDAL
{
    public int AddSsUser(SsUser SsUser)
    {
        string sql = String.Format("insert into SsUser(username,password,realname,email,phone,address,zipcode,role) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", SsUser.Username,
SsUser.Password, SsUser.Realname, SsUser.Email, SsUser.Phone, SsUser.Address, SsUser.Zipcode, SsUser.Role);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public int EditSsUser(SsUser SsUser)
    {
        string sql = String.Format("updete SsUser set username={0},password='{1}',realname={2},email='{3}',phone='{4}',address='{5}',zipcode='{6}',zipcode='{7}' where id={8}", SsUser.Username,
SsUser.Password, SsUser.Realname, SsUser.Email, SsUser.Phone, SsUser.Address, SsUser.Zipcode, SsUser.Role, SsUser.ID);
        return SqlHelper.ExecuteNonQuery(sql);
    }

    public void DeleteSsUser(int id)
    {
        string sql = String.Format("delete from SsUser where id={0}", id);
        SqlHelper.ExecuteNonQuery(sql);
    }

    public SsUser FindSsUser(string username, string password)
    {
        SsUser ssUser = null;
        string sql = String.Format("select * from SsUser where username='{0}' and password ='{1}'", username, password);
        SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
        if (sdr.Read())
        {
            ssUser = new SsUser(sdr.GetInt32(0), sdr.GetString(1), sdr.GetString(2), sdr.GetString(3), sdr.GetString(4), sdr.GetString(5), sdr.GetString(6), sdr.GetString(7), sdr.GetInt32(8));
        }
        sdr.Close();
        return ssUser;
    }
    public SsUser FindSsUser(string username)
    {
        SsUser ssUser = null;
        string sql = String.Format("select * from  SsUser where username='{0}'",username);
        SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
        if (sdr.Read())
        {
            ssUser = new SsUser(sdr.GetInt32(0), sdr.GetString(1), sdr.GetString(2), sdr.GetString(3), sdr.GetString(4), sdr.GetString(5), sdr.GetString(6), sdr.GetString(7), sdr.GetInt32(8));
        }
        sdr.Close();
        return ssUser;
    }
    public SsUser FindSsUser(int id)
    {
        SsUser ssUser = null;
        string sql = String.Format("select * from SsUser where id = {0}", id);
        SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
        if (sdr.Read())
        {
            ssUser = new SsUser(sdr.GetInt32(0), sdr.GetString(1), sdr.GetString(2), sdr.GetString(3), sdr.GetString(4), sdr.GetString(5), sdr.GetString(6), sdr.GetString(7), sdr.GetInt32(8));
        }
        sdr.Close();
        return ssUser;
    }

    public IList<SsUser> FindSsUsers(string username)
    {
        IList<SsUser> list = new List<SsUser>();
        string sql = String.Format("select * from SsUser where username like '{0}'", "%" + username + "%");
        DataTable dt = SqlHelper.ExecuteQuery(sql);
        if (dt != null)
        {
            SsUser SsUser = null;
            foreach (DataRow row in dt.Rows)
            {
                SsUser = new SsUser();
                SsUser.ID = Int32.Parse(row["id"].ToString());
                SsUser.Username = row["username"].ToString();
                SsUser.Password = row["password"].ToString();
                SsUser.Realname = row["realname"].ToString();
                SsUser.Email = row["email"].ToString();
                SsUser.Phone = row["phone"].ToString();
                SsUser.Address = row["address"].ToString();
                SsUser.Zipcode = row["zipcode"].ToString();
                SsUser.Role = Int32.Parse(row["author"].ToString());
                list.Add(SsUser);
            }
        }
        return list;
    }
}