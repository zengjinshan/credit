<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报文预览</title>
	<meta name="decorator" content="black"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtCustomerForm.js" type="text/javascript"></script>
<style type="text/css"> 
.comments { 
width: 100%;
height: 100%;
overflow:auto;
font-size:18px; 
word-break:break-all; 
resize:none;
/*在ie中解决断行问题(防止自动变为在一行显示，主要解决ie兼容问题，ie8中当设宽度为100%时，文本域类容超过一行时， 
当我们双击文本内容就会自动变为一行显示，所以只能用ie的专有断行属性“word-break或word-wrap”控制其断行)*/ 
} 
</style>
</head>
<body>
	<div id = "queryxml">	
		<textarea class="comments" readonly="readonly">${docto}</textarea>
	</div>
	
</body>
</html>

