$(function(){
	//请同学们自行添加客户端验证
	
	$("#changeCode").click(function(event){
		$("#validateCode").attr("src","Number.jsp?ran"+Math.random());
		event.preventDefault();
		return false;	
	});
	
	$("#register").click(function(){
		window.location.href = "register.jsp";
	});
});