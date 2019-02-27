using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
///ConnectDB 的摘要说明
/// </summary>
public class ConnectDB
{
    private static String connectString = ConfigurationManager.ConnectionStrings["connectString"].ConnectionString;
    public static SqlConnection Connect()
    {
        SqlConnection con = new SqlConnection(connectString);
        return con;
    }
}