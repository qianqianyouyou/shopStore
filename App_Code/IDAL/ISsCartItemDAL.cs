using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsCartItemDAL 的摘要说明
/// </summary>
public interface ISsCartItemDAL
{
    IList<SsCartItem1> FindAllCartItems();
    bool AddCartItem(int  ID);
}