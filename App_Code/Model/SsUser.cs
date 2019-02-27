using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SsUser 的摘要说明
/// </summary>
public class SsUser
{
	private int _ID;
    private string _Username;
    private string _Password;
    private string _Realname;
    private string _Email;
    private string _Phone;
    private string _Address;
    private string _Zipcode;
    private int _Role;

	public SsUser()
	{
		
	}

    public SsUser(int id, string username, string password, string realname, string email, string phone, string address, string zipcode, int role)
    {
        _ID = id;
        _Username = username;
        _Password = password;
        
        _Realname = realname;
        _Email = email;
        _Phone = phone;
        _Address = address;
        _Zipcode = zipcode;
        _Role = role;
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

    public string Username
    {
        get
        {
            return _Username;
        }
        set
        {
            _Username = value;
        }
    }

    public string Password
    {
        get
        {
            return _Password;
        }
        set
        {
            _Password = value;
        }
    }

    public string Realname
    {
        get
        {
            return _Realname;
        }
        set
        {
            _Realname = value;
        }
    }

    public string Email
    {
        get
        {
            return _Email;
        }
        set
        {
            _Email = value;
        }
    }

    public string Phone
    {
        get
        {
            return _Phone;
        }
        set
        {
            _Phone = value;
        }
    }

    public string Address
    {
        get
        {
            return _Address;
        }
        set
        {
            _Address = value;
        }
    }

    public string Zipcode
    {
        get
        {
            return _Zipcode;
        }
        set
        {
            _Zipcode = value;
        }
    }

    public int Role
    {
        get
        {
            return _Role;
        }
        set
        {
            _Role = value;
        }
    }
}