<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>前台审批信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ppsbl/ppsA01FromExamineInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ppsA01FromExamineInfo" action="${ctx}/ppsbl/ppsA01FromExamineInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期数：</label>
					<div class="controls">
						<form:input path="dataDt" htmlEscape="false" maxlength="6" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报表名称：</label>
					<div class="controls">
						<form:input path="reportName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
			 	<div class="span6">
					<label class="control-label">业务所属机构：</label>
					<div class="controls">
						<form:hidden path="regOrgNo" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<form:input path="regOrgName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
		 		<div class="span6">	 
					<label class="control-label">多实体标识：</label>
					<div class="controls">
						<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报表描述：</label>
					<div class="controls">
						<form:input path="reportDesc" htmlEscape="false" maxlength="100" class="input-large "/>
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
			<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:modify"><button class="btn_public" type="button" onclick="ppsA01FromExamineInfoForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>