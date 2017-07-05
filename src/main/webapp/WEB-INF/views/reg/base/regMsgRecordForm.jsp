<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报文生成记录表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regMsgRecordForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regMsgRecord" action="${ctx}/base/regMsgRecord/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<form:hidden path="belongSys"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">报送日期：</label>
			<div class="controls">
				<form:input path="sendDate" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">文件序号：</label>
			<div class="controls">
				<form:input path="fileNo" htmlEscape="false" maxlength="10" class="input-xlarge  digits"/>
			</div>
		</div>
			<div class="control-group">
			<label class="control-label">文件类型：</label>
			<div class="controls">
				<form:select path="fileType" class="input-large required">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FILE_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">文件名称：</label>
			<div class="controls">
				<form:input path="fileName" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">文件路径：</label>
			<div class="controls">
				<form:input path="filePath" htmlEscape="false" maxlength="500" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="base:regMsgRecord:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>