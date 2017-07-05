<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑关系接口表成功管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStRelationForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIStRelation" action="${ctx}/fxq/fxqIStRelation/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告ID：</label>
					<div class="controls">
						<form:input path="reportId" htmlEscape="false" maxlength="20" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls">
						<form:input path="txId" htmlEscape="false" maxlength="20" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易日期：</label>
					<div class="controls">
						<form:input path="txDt" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">多实体标识：</label>
					<div class="controls">
						<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqIStRelation:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>