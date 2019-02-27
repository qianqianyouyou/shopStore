using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsCartItemBLL 的摘要说明
/// </summary>
public interface ISsCartItemBLL
{
    IList<SsCartItem1> FindAllCartItems();
    bool AddCartItem(int  id);
}