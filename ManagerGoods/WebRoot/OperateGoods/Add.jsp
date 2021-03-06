<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ADD Goods Page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="AllStyle/Add.css">

  </head>
  
   <body onload="loadFile()">
<h2>Add Goods page</h2>
<div class="container">
<form action="OperateGoods/AddInfo.jsp" method="post" name="formContent" class="formContent">
    <ul>
        <li class="same">
            <span>商品货号:</span>
            <input type="number" name="id" placeholder="Enter Loginname" required>
        </li>
        <li class="same">
            <span>商品名称:</span>
            <input type="text" name="name" placeholder="Enter Username" required>
        </li>
        <li class="special">
            <span>商品类型:</span>
            <input type="radio" id="book" name="type" value="book" checked>
            <label for="book">📖图书</label>
            <input type="radio" id="medicine" name="type" value="medicine">
            <label for="medicine">💊药品</label>
            <input type="radio" id="digital" name="type" value="digital">
            <label for="digital">📱数码</label>
            <input type="radio" id="life" name="type" value="life">
            <label for="life">🚪生活用品</label>
            <input type="radio" id="fruit" name="type" value="fruit">
            <label for="fruit">🍉水果</label>
            <input type="radio" id="toy" name="type" value="toy">
            <label for="toy">🚗玩具</label>
        </li>
        <li class="special">
            <span>库存数量:</span>
            <select name="stock" required></select>
        </li>
        <li class="same">
            <span>厂家名称:</span>
            <input type="text" name="manufacturer" placeholder="Enter Manufacturer" required>
        </li>
        <li class="special">
            <span>生产日期:</span>
            <input class="pd" type="date" value="2017-01-06" name="PD">
        </li>
        <li>
            <span>&nbsp;&nbsp;&nbsp;保质期:</span>
            <select name="EXP">
            </select>
        </li>
        <li class="same">
            <span>&nbsp;&nbsp;&nbsp;供应商:</span>
            <input type="text" name="supplier" placeholder="Enter Supplier" required>
        </li>

    </ul>
    <input class="submit" type="submit" name="submit" value="ADD">
    <input class="reset" type="reset" name="reset" value="RESET">
</form>
</div>
<script type="text/javascript" src="JS/Add.js"></script>
  </body>
</html>
