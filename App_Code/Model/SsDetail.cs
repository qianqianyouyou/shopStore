using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SsDetail 的摘要说明
/// </summary>
public class SsDetail
{
	private int _OrderID;
    private int _BookID;
    private int _Quantity;
    private decimal _Price;

    public SsDetail()
    {

    }

    public SsDetail(int orderID, int bookID, int quantity, decimal price)
	{
	    _OrderID = orderID;
        _BookID = bookID;
        _Quantity = quantity;
        _Price = price;
	}

    public int OrderID
    {
        get
        {
            return _OrderID;
        }
        set
        {
            _OrderID = value;
        }
    }

    public int BookID
    {
        get
        {
            return _BookID;
        }
        set
        {
            _BookID = value;
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
}