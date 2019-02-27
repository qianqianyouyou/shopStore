using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SsCartItem 的摘要说明
/// </summary>
public class SsCartItem1
{
	public SsCartItem1()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    private int _ID;
    private string _Name;
    private int _Quantity;
    private decimal _Price;
 
    public SsCartItem1(int id, string name, int quantity, decimal price)
    {
        _ID = id;
        _Name = name;
        _Quantity = quantity;
        _Price = price;
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

    public int Quantity
    {
        get
        {
            return _Quantity;
        }
        set
        {
            _Quantity = value;
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

    public decimal Total
    {
        get
        {
            return _Price * _Quantity;
        }

    }
}