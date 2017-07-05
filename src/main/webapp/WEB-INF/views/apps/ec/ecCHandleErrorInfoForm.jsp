<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>操作企业征信报文校验错误信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCHandleErrorInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCHandleErrorInfo" action="${ctx}/ec/ecCHandleErrorInfo/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">文件路径：</label>
			<div class="controls">
				<form:input path="filePath" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">文件名：</label>
			<div class="controls">
				<form:input path="fileName" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">行号：</label>
			<div class="controls">
				<form:input path="lineNum" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">主表名：</label>
			<div class="controls">
				<form:input path="mainTableName" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">错误提示：</label>
			<div class="controls">
				<form:input path="errHint" htmlEscape="false" maxlength="400" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">报送日期：</label>
			<div class="controls">
				<input name="sendData" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
					value="<fmt:formatDate value="${ecCHandleErrorInfo.sendData}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">错误信息：</label>
			<div class="controls">
				<form:input path="errMsg" htmlEscape="false" maxlength="2000" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="ec:ecCHandleErrorInfo:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>