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
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="${pageContext.request.contextPath }/admin_quit.do" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
      	<form action="${pageContext.request.contextPath }/product_update.do" method="post" enctype="multipart/form-data">
      	  <s:iterator>
	        <h1 class="blues">拍卖品信息</h1>
	        <input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
	        <input type="hidden" name="image" value="<s:property value="model.image"/>"/>
	          <dl>
	            <dd >
	              <label>名称：</label>
	              <input type="text" class="inputh lf" name="title" value="<s:property value="model.title"/>" />
	              <div class="xzkbg spbg lf"></div>
	            </dd>
	            <dd>
	              <label>起拍价：</label>
	              <input type="text" class="inputh lf" name="price" value="<s:property value="model.price"/>" />
	              <div class="lf red laba">必须为数字</div>
	            </dd>	            
	            <dd>
	              <label>开始时间：</label>
	              <input type="text" class="inputh lf" name="beginTime" value="<s:property value="model.beginTime"/>" />
	              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
	            </dd>
	            <dd>
	              <label>结束时间：</label>
	              <input type="text" class="inputh lf" name="stopTime" value="<s:property value="model.stopTime"/>" />
	              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
	            </dd>
	            <dd class="dds">
	              <label>描述：</label>
	              <textarea name="describes" cols="" rows="" class="textarea"><s:property value="model.describes"/></textarea>
	            </dd>
	          
	            <dd>
	              <label>修改图片：</label>
	              <div class="lf salebd"><img src="<s:property value="model.image"/>" width="100" height="100" /></div>
	               <input name="upload" type="file" class="marg10" value="<s:property value="model.image" />" /> 
	            </dd>
	            
	            <dd class="hegas">
	                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs f14 lf buttomb" />
	                <input name="" type="button" onclick="javascript:history.back(-1);" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb" />
	                
	            </dd>
	          </dl>
	        </s:iterator>
	     </form>
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body>
</html>
