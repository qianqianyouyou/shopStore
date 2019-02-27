using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SsOrder 的摘要说明
/// </summary>
public class SsOrder
{
	private int _ID;
    private string _UserID;
    private DateTime _Date;
    private int _State;

	public SsOrder()
	{
		
	}

    public SsOrder(int id, string userID, DateTime date, int state)
    {
        _ID = id;
        _UserID = userID;
        _Date = date;
        _State = state;
    }

    public int ID
    {
        get
        {
            return _ID;
        }
        set
        {
            _ID = value;
        }
    }

    public string UserID
    {
        get
        {
            return _UserID;
        }
        set
        {
            _UserID = value;
        }
    }

    public DateTime Date
    {
        get
        {
            return _Date;
        }
        set
        {
            _Date = value;
        }
    }

    public int State
    {
        get
        {
            return _State;
        }
        set
        {
            _State = value;
        }
    }
}