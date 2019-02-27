using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ISsOrderDAL 的摘要说明
/// </summary>
public interface ISsOrderDAL
{
    int AddSsOrder(SsOrder ssOrder, ICollection<SsCartItem1> items);
    void DeleteSsOrder(int id);
    int EditSsOrder(SsOrder order);
    SsOrder FindSsOrder(int id);
    IList<SsOrder> FindSsOrders(string username, int state);
}