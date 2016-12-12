<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script>
		function checkForm(){
			//校验用户名
			var name = document.getElementById("name").value;
			if(name.length<6){
				alert("用户名长度不能小于6位！");
				return false;
			}
			//校验密码
			var password = document.getElementById("password").value;
			if(password.length<6){
				alert("密码长度不能小于6位！");
				return false;
			}
			//校验身份证号
			var idNum = document.getElementById("idNum").value;
			if(!(/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/.test(idNum))){
				alert("请输入正确身份证号！");
				return false;
			}
			
			//校验手机号
			var phone = document.getElementById("phone").value;		
			    if(!(/(^(\d{3,4}-)?\d{7,8})$|(^1[3|4|5|8][0-9]{9})/.test(phone))){
			        alert("请输入正确手机号！");
			        return false;
			}
			
			
		}
		function changeImg(){
			 	var img = document.getElementById("captchaImage");
			 	img.src="${pageContext.request.contextPath}/checkImg.do?"+new Date().getTime();
			 
		}
		function disable(){
  			
  			document.getElementById("accept").disabled=true
  		}
		function enable(){
	 		
	 		document.getElementById("accept").disabled=false
	  	}
	</script>
</head>

<body>
<div class="wrap">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
	        <form action="${pageContext.request.contextPath}/user_register.do" onsubmit="return checkForm()">
	          <dl>
	            <dd>
	              <label> <small>*</small>用户名</label>
	              <input type="text" class="inputh lf" id="name" name="name" />
	             <div class="lf red laba">用户名要求不低于6个字符</div>
	            </dd>
	            <dd>
	              <label> <small>*</small>密码</label>
	              <input type="text" class="inputh lf" id="password" name="password"/>
	              <div class="lf red laba">密码要求不低于6个字符</div>
	            </dd>
	            <dd>
	              <label> <small>*</small>身份证号</label>
	              <input type="text" class="inputh lf" id="idNum" name="idNum" />
	              <div class="lf red laba">身份证号必填</div>
	            </dd>
	            <dd>
	              <label> <small>*</small>电话</label>
	              <input type="text" class="inputh lf" id="phone" name="phone"/>
	              <div class="lf red laba">电话号码必填</div>
	            </dd>	          	            
	            <dd>
		           <label class="lf" for="passwords">验证码：</label>
		           <input type="text" class="inputh inputs lf"  id="checkcode" name="checkcode"/>
		           <span class="wordp lf"><img id="captchaImage" src="${pageContext.request.contextPath}/checkImg.do" width="96" height="27" onclick="changeImg()" title="点击更换验证码"/></span>
		        	<s:actionerror />
		        </dd>
	            <dd class="hegas">
	              <label>&nbsp;</label>
	               <input onclick="if (this.checked) {enable()} else {disable()}"  type="checkbox" id="rem_u"   />
	              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
	            </dd>
	            <dd class="hegas">
	              <label>&nbsp;</label>
	              <input id="accept"  disabled="true" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
	            </dd>
	          </dl>
	       </form>
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body>
</html>
