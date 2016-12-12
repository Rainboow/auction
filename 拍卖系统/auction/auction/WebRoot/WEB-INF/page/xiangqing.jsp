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
 
  <div class="top10">
    <input onclick="document.location.href='${pageContext.request.contextPath }/product_toList.do'" type="button" value="返回列表" class="spbg buttombg f14" />
  </div>
 
<!-- main end-->
</div>
</body>
</html>
