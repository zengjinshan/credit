<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑案例管理意见</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqDubiousCaseForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqDubiousCase" action="${ctx}/fxq/fxqDubiousCase/adviseUpdate" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
				<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
							<form:input path="dataDt" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑程度：</label>
					<div class="controls">
						<form:select path="ssdg" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_SSDG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">采取措施：</label>
					<div class="controls">
						<form:input path="tkms" htmlEscape="false" maxlength="120" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
				<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">可疑行为描述：</label>
					<div class="controls">
						<form:textarea path="ssds" htmlEscape="false" rows="4" maxlength="1000" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqDubiousCase:advise"><button class="btn_public" type="button" onclick="fxqDubiousCaseForm.advise();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>