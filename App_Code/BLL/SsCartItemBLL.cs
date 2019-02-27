using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// SsCartItemBLL 的摘要说明
/// </summary>
public class SsCartItemBLL:ISsCartItemBLL
{
	public SsCartItemBLL()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    private ISsCartItemDAL SsCartItemDAL = new SsCartItemDAL();
   
    private  SsCartItem1 ssCartItem1=new SsCartItem1();
    public IList<SsCartItem1> FindAllCartItems()
    {
        return SsCartItemDAL.FindAllCartItems();
    }

    public bool AddCartItem(int id)
    {
        return SsCartItemDAL.AddCartItem(id);
    }

}
