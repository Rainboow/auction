<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="${pageContext.request.contextPath }/user_quit.do" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
  	<s:iterator >
	      <ul class="rows">
	        <li>名称：</li>
	        <li class="borderno"><s:property value="model.title"/> </li>
	      </ul>
	      <ul class="rows">
	        <li>描述：</li>
	        <li class="borderno"><s:property value="model.describes"/></li>
	      </ul>
	      <ul class="rows">
	        <li>开始时间：</li>
	        <li class="borderno"><s:property value="model.beginTime"/></li>
	      </ul>
	      <ul class="rows">
	        <li>结束时间：</li>
	        <li class="borderno"><s:property value="model.stopTime"/></li>
	      </ul>
	      <ul class="rows border-no">
	        <li>起拍价：</li>
	        <li class="borderno"><s:property value="model.price"/></li>
	      </ul>
     
  </div>
  <div class="rg borders">
  	<img src="${pageContext.request.contextPath }/<s:property value="model.image"/>" width="270" height="185" alt="" />
  </div>
  </s:iterator>
  <div class="cl"></div>
  <div class="top10 salebd">
    <form action="${pageContext.request.contextPath}/record_save.do">
       <p>
       <label for="sale">出价：</label>
       <input type="text"  class="inputwd" id="rPrice" name="rPrice"/>
       <input type="hidden" id="rName" name="rName" value="<s:property value="#session.existUser.name"/>" />
       <input  type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       </p>
       <p class="f14 red">不能低于最低竞拍价</p>
 	</form>
  </div>
  <div class="top10">
    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    <input onclick="document.location.href='${pageContext.request.contextPath }/product_toList.do'" type="button" value="返回列表" class="spbg buttombg f14" />
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
      <ul class="rows">
        <li>2010-01-05 12:50:01</li>
        <li>50000,00</li>
        <li class="borderno">张三</li>
      </ul>
      <ul class="rows even">
        <li>2010-01-05 11:50:01</li>
        <li>40000,00</li>
        <li class="borderno">李四</li>
      </ul>
      <ul class="rows">
        <li>2010-01-05 10:50:01</li>
        <li>30000,00</li>
        <li class="borderno">王五</li>
      </ul>
      <ul class="rows even border-no">
        <li>2010-01-05 09:50:01</li>
        <li>20000,00</li>
        <li class="borderno">李靖</li>
      </ul>
  </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
