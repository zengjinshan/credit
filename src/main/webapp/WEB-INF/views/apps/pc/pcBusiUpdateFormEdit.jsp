<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>个征账户标识变更管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcBusiUpdateForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="pcBusiUpdate" action="${ctx}/pc/pcBusiUpdate/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">原金融机构代码：</label>
					<div class="controls">
						<form:input path="aaOrgNo" htmlEscape="false" maxlength="14" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">原业务号：</label>
					<div class="controls">
						<form:input path="aaBusiNo" htmlEscape="false" maxlength="40" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">新金融机构代码：</label>
					<div class="controls">
						<form:input path="newOrgNo" htmlEscape="false" maxlength="14" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">新业务号：</label>
					<div class="controls">
						<form:input path="newBusiNo" htmlEscape="false" maxlength="40" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="pc:pcBusiUpdate:modify"><button class="btn_public" type="button" onclick="pcBusiUpdateForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>