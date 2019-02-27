using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
///SqlHelper 的摘要说明
/// </summary>
public class SqlHelper
{
    public static int ExecuteNonQuery(string sql, params SqlParameter[] cmdParms)
    {
        int num;
        SqlConnection con = ConnectDB.Connect();
        SqlCommand cmd = new SqlCommand(sql, con);
        foreach (SqlParameter parm in cmdParms)
        {
            cmd.Parameters.Add(parm);
        }

        try
        {
            con.Open();
            num = cmd.ExecuteNonQuery();
            return num;
        }
        catch
        {
            return 0;
        }
        finally
        {
            cmd.Dispose();
            con.Close();
            con.Dispose();
        }
    }
    public static DataTable ExecuteQuery(string sql, params SqlParameter[] cmdParms)
    {
        SqlConnection con = ConnectDB.Connect();
        SqlCommand cmd = new SqlCommand(sql, con);
        foreach (SqlParameter parm in cmdParms)
        {
            cmd.Parameters.Add(parm);
        }
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            da.Fill(dt);
        }
        catch
        {
            return null;
        }

        finally
        {
            da.Dispose();
            cmd.Dispose();
        }
        return dt;
    }

    public static DataTable ExecuteQuery(string sql, int startRowIndex, int maxmumRows, params SqlParameter[] cmdParms)
    {
        SqlConnection con = ConnectDB.Connect();
        SqlCommand cmd = new SqlCommand(sql, con);
        foreach (SqlParameter parm in cmdParms)
        {
            cmd.Parameters.Add(parm);
        }
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            da.Fill(startRowIndex, maxmumRows, dt);
        }
        catch
        {
            return null;
        }

        finally
        {
            da.Dispose();
            cmd.Dispose();
        }
        return dt;
    }

    public static SqlDataReader ExecuteReader(string sql, params SqlParameter[] cmdParms)
    {
        SqlConnection con = ConnectDB.Connect();
        SqlCommand cmd = new SqlCommand(sql, con);
        foreach (SqlParameter parm in cmdParms)
        {
            cmd.Parameters.Add(parm);
        }

        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;
        }
        catch
        {
            return null;
        }
    }

    public static object ExecuteScalar(string sql, params SqlParameter[] cmdParms)
    {
        SqlConnection con = ConnectDB.Connect();
        SqlCommand cmd = new SqlCommand(sql, con);
        try
        {
            con.Open();
            Object val = cmd.ExecuteScalar();
            return val;
        }
        catch
        {
            return null;
        }

        finally
        {
            cmd.Dispose();
            con.Close();
            con.Dispose();
        }
    }
}