using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SsCategory 的摘要说明
/// </summary>
public class SsCategory
{
	private int _CatID;
    private string _Name;

    public SsCategory()
    {
        
    }

    public SsCategory(int id, string name)
	{
        _CatID = id;
        _Name = name;
	}

    public int CatID
    {
        get 
        {
            return _CatID;
        }
        set
        {
            _CatID = value;
        }
    }

    public string Name
    {
        get
        {
            return _Name;
        }
        set
        {
            _Name = value;
        }
    }
}