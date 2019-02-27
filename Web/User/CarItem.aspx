<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarItem.aspx.cs" Inherits="Web_User_CarItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>购物车</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="cartTable">
        <thead>
        <tr>
            <th><label><input class="check-all check" type="checkbox"/>全选</label></th>
            <th>商品 </th>
            <th>单价</th>
            <th>数量</th>
            <th>小计 </th>
            <th>操作 </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="checkbox"><input class="check-one check" type="checkbox"/></td>
        <td class="goods"><img/></td>
        </tr>
        <tr></tr>
        <tr></tr>
        <tr></tr>
        </tbody>
    </table>
    </div>
    </form>
</body>
</html>
