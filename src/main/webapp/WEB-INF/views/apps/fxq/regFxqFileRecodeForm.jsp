<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>反洗钱文件名路径登记表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/regFxqFileRecodeForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regFxqFileRecode" action="${ctx}/fxq/regFxqFileRecode/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">报文文件名：</label>
			<div class="controls">
				<form:input path="fileName" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">文件完整名称：</label>
			<div class="controls">
				<form:input path="fileFullPath" htmlEscape="false" maxlength="500" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
			 	</div>
			</div>
			</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxq:regFxqFileRecode:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>