<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>涉案账户管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100404MainForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100404Main" action="${ctx}/tf/tf100404Main/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">数据日期：</label>
			<div class="controls">
				<form:input path="dataDt" htmlEscape="false" maxlength="16" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">传输报文流水号：</label>
			<div class="controls">
				<form:input path="transSerialNumber" htmlEscape="false" maxlength="106" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">业务申请编号：</label>
			<div class="controls">
				<form:input path="applicationId" htmlEscape="false" maxlength="72" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">事件特征码：</label>
			<div class="controls">
				<form:select path="featureCode" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('Tf_Feature_Code')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
				<form:input path="bankId" htmlEscape="false" maxlength="24" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">卡号：</label>
			<div class="controls">
				<form:input path="cardNumber" htmlEscape="false" maxlength="60" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">账户名：</label>
			<div class="controls">
				<form:input path="accountName" htmlEscape="false" maxlength="360" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">证件类型：</label>
			<div class="controls">
				<form:input path="idType" htmlEscape="false" maxlength="4" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">证件号：</label>
			<div class="controls">
				<form:input path="idNumber" htmlEscape="false" maxlength="60" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">联系电话：</label>
			<div class="controls">
				<form:input path="phoneNumber" htmlEscape="false" maxlength="60" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">通讯地址：</label>
			<div class="controls">
				<form:input path="address" htmlEscape="false" maxlength="450" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">邮政编码：</label>
			<div class="controls">
				<form:input path="postCode" htmlEscape="false" maxlength="20" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">开卡地点：</label>
			<div class="controls">
				<form:input path="accountOpenPlace" htmlEscape="false" maxlength="510" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">上报机构名称：</label>
			<div class="controls">
				<form:input path="reportOrgName" htmlEscape="false" maxlength="450" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">经办人姓名：</label>
			<div class="controls">
				<form:input path="operatorName" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">经办人电话：</label>
			<div class="controls">
				<form:input path="operatorPhoneNumber" htmlEscape="false" maxlength="60" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="tf:tf100404Main:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>