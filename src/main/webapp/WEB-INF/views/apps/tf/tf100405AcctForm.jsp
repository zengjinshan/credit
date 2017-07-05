<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常事件子账户管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100405AcctForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100405Acct" action="${ctx}/tf/tf100405Acct/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">数据日期：</label>
			<div class="controls">
				<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">传输报文流水号：</label>
			<div class="controls">
				<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">一般(子)账户序号：</label>
			<div class="controls">
				<form:input path="accountSerial" htmlEscape="false" maxlength="8" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">定位账户账号：</label>
			<div class="controls">
				<form:input path="accountNumber" htmlEscape="false" maxlength="50" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">一般(子)账户类别：</label>
			<div class="controls">
				<form:input path="accountType" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">账户状态：</label>
			<div class="controls">
				<form:input path="accountStatus" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">币种：</label>
			<div class="controls">
				<form:input path="currency" htmlEscape="false" maxlength="3" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">钞汇标志：</label>
			<div class="controls">
				<form:input path="cashRemit" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="tf:tf100405Acct:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>