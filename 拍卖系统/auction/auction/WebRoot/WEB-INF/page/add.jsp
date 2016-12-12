<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <div class="logout right"><a href="${pageContext.request.contextPath }/admin_quit.do" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
      <form action="${pageContext.request.contextPath }/product_add.do" method="post" enctype="multipart/form-data">
        <h1 class="blues">拍卖品信息</h1>
          <dl>
            <dd >
              <label>名称：</label>
              <input type="text" class="inputh lf" name="title"/>
              <div class="xzkbg spbg lf"></div>
            </dd>
            <dd>
              <label>起拍价：</label>
              <input type="text" class="inputh lf" name="price"/>
              <div class="lf red laba">必须为数字</div>
            </dd>           
            <dd>
              <label>开始时间：</label>
              <input type="text" class="inputh lf" name="beginTime" />
              <div class="lf red laba">格式：2010-05-05 12:30:00</div>
            </dd>
            <dd>
              <label>结束时间：</label>
              <input type="text" class="inputh lf" name="stopTime" />
              <div class="lf red laba">格式：2010-05-06 16:30:00</div>
            </dd>  
            <dd >
              <label>拍卖品图片：</label>
              <input name="upload" type="file" class="offset10 lf" />             
            </dd>
             <dd class="dds">
              <label>描述：</label>
              <textarea name="describes" cols="" rows="" class="textarea"></textarea>
            </dd>
            <dd class="hegas">
                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
                <input name="" type="button" onclick="javascript:history.back(-1);"  value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" />
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
