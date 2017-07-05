<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑账户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfIStAcctForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tfIStAcct" action="${ctx}/tf/tfIStAcct/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${tfIStAcct.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户账号：</label>
					<div class="controls">
						<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">账户名称：</label>
					<div class="controls">
						<form:input path="acctName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls">
						<form:select path="acctType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_ACCT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">账户开户时间：</label>
					<div class="controls">
						<form:input path="openDt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户销户时间：</label>
					<div class="controls">
						<form:input path="closeDt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">校验信息：</label>
					<div class="controls">
						<input type="hidden" id="modiInfoTab" value="${tfIStAcct.modiInfo}"/>
						<form:select path="modiInfo" class="input-large-select-edit " multiple="true">
							<form:options items="${fns:getDictList('FXQ_CHECK_INFO')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验符号：</label>
					<div class="controls">
						<form:input path="checkField" htmlEscape="false" maxlength="5" class="input-large "/>
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
			<shiro:hasPermission name="tf:tfIStAcct:edit"><button class="btn_public" type="button" onclick="tfIStAcctForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>