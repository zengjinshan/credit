<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-高级管理人员管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbManagerPersonForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbManagerPerson" action="${ctx}/ec/ecCBbManagerPerson/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">高管情况ID：</label>
					<div class="controls">
						<form:input path="managerPersonId" htmlEscape="false" maxlength="13" class="input-large required digits" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">高管人员姓名：</label>
					<div class="controls">
						<form:input path="managerName" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">证件类型：</label>
					<div class="controls">
						<form:select path="certType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls">
						<form:input path="certNum" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">高管人员类别：</label>
					<div class="controls">
						<form:select path="managerType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_MANAGER_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">性别：</label>
					<div class="controls">
						<form:select path="gender" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_GENDER')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">高管人员出生日期：</label>
					<div class="controls">
						<form:input path="managerBirth" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">高管人员最高学历：</label>
					<div class="controls">
						<form:select path="managerEdu" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_MANAGER_EDU')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">高管人员工作简历：</label>
					<div class="controls">
						<form:input path="managerResume" htmlEscape="false" maxlength="4000" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls">
						<form:input path="reportFlag" htmlEscape="false" maxlength="1" class="input-large "/>
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
			<shiro:hasPermission name="ec:ecCBbManagerPerson:modify"><button class="btn_public" type="button" onclick="ecCBbManagerPersonForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>