<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
	<script >
		function checkFrom(){
			var id = document.getElementById("id").value;
		}
		
		
		 function changeImg(){
		 	var img = document.getElementById("captchaImage");
		 	img.src="${pageContext.request.contextPath}/checkImg.do?"+new Date().getTime();
		 
		 }
	</script>

</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="${pageContext.request.contextPath }/images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="${pageContext.request.contextPath }/user_userLogin.do?page=1" method="post" onsubmit="reutrn checkFrom()">
		    <div class="login">
		      <dl>
		        <dt class="blues">用户登陆</dt>
		       
		        <dd>
			        <label for="name">用户名：</label>
			        <input type="text" class="inputh"  id="name" name="name"/>
			    </dd>
		        <dd>
			        <label for="password">密 码：</label>
			        <input type="password" class="inputh"  id="password" name="password"/>
			    </dd>
		        <dd>
		           <label class="lf" for="passwords">验证码：</label>
		           <input type="text" class="inputh inputs lf"  id="checkcode" name="checkcode"/>
		           <span class="wordp lf"><img id="captchaImage" src="${pageContext.request.contextPath}/checkImg.do" width="96" height="27" onclick="changeImg()" title="点击更换验证码"/></span>
		        	<s:actionerror />
		        </dd>
		        <dd>
		           <input name=""  type="checkbox" id="rem_u"  />
		           <span for="rem_u">下次自动登录</span>
		        </dd>
		        <dd class="buttom">
		           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
		           <input name="" type="button" onclick="document.location.href='${pageContext.request.contextPath }/user_toRegister.do'" value="注 册" class="spbg buttombg f14 lf" />
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
