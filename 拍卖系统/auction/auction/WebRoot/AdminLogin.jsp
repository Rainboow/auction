<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
 <div class="main">
   <div class="sidebarg fnone">
     <form action="${pageContext.request.contextPath }/admin_adminLogin.do?page=1" method="post">
	    <div class="login">
	      <dl>
	        <dt>管理员登陆</dt>
	        <span style="color: red"><s:actionerror /></span>
	        <dd><label for="name">用户名：</label><input type="text" class="inputh" id="name" name="name"/></dd>
	        <dd><label for="password">密 码：</label><input type="password" class="inputh" id="password" name="password"/></dd>              
	        <dd class="buttom">
	           <input name="" type="submit" value="登 录" class="spbg buttombg buttomb f14 lf" />
	           <div class="cl"></div>
	        </dd>
	       
	      </dl>
	    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
