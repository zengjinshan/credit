<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>反洗钱反馈错误表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/regFxqErrorMsgForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regFxqErrorMsg" action="${ctx}/fxq/regFxqErrorMsg/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">反馈压缩包：</label>
			<div class="controls">
				<form:input path="zipFile" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">反馈回执文件：</label>
			<div class="controls">
				<form:input path="fileName" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">反馈文件类型：</label>
			<div class="controls">
				<form:input path="fileType" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">数据日期：</label>
			<div class="controls">
				<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">客户编号：</label>
			<div class="controls">
				<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">大额交易特征代码：</label>
			<div class="controls">
				<form:input path="hhTxFeaCd" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">可疑客户账号：</label>
			<div class="controls">
				<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">业务标识号：</label>
			<div class="controls">
				<form:input path="bizIdNum" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">反馈定位：</label>
			<div class="controls">
				<form:input path="locate" htmlEscape="false" maxlength="1024" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">反馈定位字段描述：</label>
			<div class="controls">
				<form:input path="locateFileName" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">反馈定位描述信息：</label>
			<div class="controls">
				<form:input path="locateMessage" htmlEscape="false" maxlength="2048" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxq:regFxqErrorMsg:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>