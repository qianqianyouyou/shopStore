using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsOrderBLL 的摘要说明
/// </summary>
public interface ISsOrderBLL
{
    int AddSsOrder(SsOrder ssOrder, ICollection<SsCartItem1> items);
    void DeleteSsOrder(int id);
    int EditSsOrder(SsOrder order);
    SsOrder FindSsOrder(int id);
    IList<SsOrder> FindSsOrders(string username, int state);
}