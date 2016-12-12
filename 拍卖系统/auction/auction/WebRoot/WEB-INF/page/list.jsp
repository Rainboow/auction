<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    
    <div class="logout right"><a href="${pageContext.request.contextPath }/user_quit.do" title="注销">注销</a></div>&nbsp;&nbsp;&nbsp;&nbsp;
  </div>
  <div class="forms">
  	<form action="${pageContext.request.contextPath}/product_find.do?page=1" method="post">
	    <label for="name">名称</label>
	    <input name="search" type="text" class="nwinput" />	        
	    <input name="" type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
	</form>
  </div>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      <s:iterator var="p" value="pageBean.list">
	      <ul class="rows">
	        <li><a href="${pageContext.request.contextPath }/product_findXiangqingByPid.do?pid=<s:property value="#p.pid"/> "><s:property value="#p.title"/> </a></li>
	        <li class="list-wd"><s:property value="#p.describes"/> </li>
	        <li><s:property value="#p.beginTime"/> </li>
	        <li><s:property value="#p.stopTime"/> </li>
	        <li><s:property value="#p.price"/> </li>
	        <li class="borderno red"><a href="${pageContext.request.contextPath }/product_findByPid.do?pid=<s:property value="#p.pid"/> ">竞拍</a></li>
	      </ul>
      </s:iterator>
     
    
    
     
    <div class="page">
      
				<s:if test="pageBean.page != 1">
					<A href="${pageContext.request.contextPath}/product_findAllByPage.do?page=1">首页</A>
				    <A href="${pageContext.request.contextPath}/product_findAllByPage.do?page=<s:property value="pageBean.page-1"/>">上一页</A>
				</s:if>
				<s:if test="pageBean.page != totalPage">
					<A href="${pageContext.request.contextPath}/product_findAllByPage.do?page=<s:property value="pageBean.page+1"/>">下一页</A>
				    <A href="${pageContext.request.contextPath}/product_findAllByPage.do?page=<s:property value="pageBean.totalPage"/>">末页</A>
				</s:if>  
		
			<SPAN class=total>第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页</SPAN> 
      </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
