using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SsStationery 的摘要说明
/// </summary>
public class SsStationery
{
	private int _ID;
    private int _CatID;
    private SsCategory _SsCategory;
    private string _Name;
    private string _Image;
    private decimal _Price;
    private string _Usage;
    private string _Brand;
	public SsStationery()
	{
        _SsCategory = new SsCategory();
	}

    public SsStationery(string catName, int id, int catID, string name, string image, decimal price, string usage, string brand)
    {
        _SsCategory = new SsCategory();
        _SsCategory.CatID = id;
        _SsCategory.Name = catName;
        _ID = id;
        _CatID = catID;
        _Name = name; 
        _Image = image;
        _Price = price;
        _Usage = usage;
        _Brand = brand;
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

    public SsCategory SsCategory
    {
        get
        {
            return _SsCategory;
        }
        set
        {
            _SsCategory = value;
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

    public string Image
    {
        get
        {
            return _Image;
        }
        set
        {
            _Image = value;
        }
    }

    public decimal Price
    {
        get
        {
            return _Price;
        }
        set
        {
            _Price = value;
        }
    }

    public string Usage
    {
        get
        {
            return _Usage;
        }
        set
        {
            _Usage = value;
        }
    }
    public string Brand
    {
        get
        {
            return _Brand;
        }
        set
        {
            _Brand = value;
        }
    }
}