<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常开卡管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100403MainForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100403Main" action="${ctx}/tf/tf100403Main/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">证件类型：</label>
					<div class="controls">
						<form:select path="idType" class="input-large required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('Tf_Id_Type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号：</label>
					<div class="controls">
						<form:input path="idNumber" htmlEscape="false" maxlength="30" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">传输报文流水号：</label>
					<div class="controls">
						<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务申请编号：</label>
					<div class="controls">
						<form:input path="applicationId" htmlEscape="false" maxlength="36" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">事件特征码：</label>
					<div class="controls">
						<form:select path="featureCode" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('Tf_feature_Code')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报银行机构编码：</label>
					<div class="controls">
						<form:input path="bankId" htmlEscape="false" maxlength="12" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">姓名：</label>
					<div class="controls">
						<form:input path="idName" htmlEscape="false" maxlength="90" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经办人姓名：</label>
					<div class="controls">
						<form:input path="operatorName" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">经办人电话：</label>
					<div class="controls">
						<form:input path="operatorPhoneNumber" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls">
						<form:input path="checkInfo" htmlEscape="false" maxlength="3000" class="input-large "/>
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
			<shiro:hasPermission name="tf:tf100403Main:modify"><button class="btn_public" type="button" onclick="tf100403MainForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>