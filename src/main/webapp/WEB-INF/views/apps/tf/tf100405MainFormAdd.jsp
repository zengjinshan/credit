<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常事件管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100405MainForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100405Main" action="${ctx}/tf/tf100405Main/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">传输报文流水号：</label>
					<div class="controls">
						<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
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
					<label class="control-label">上报银行机构编码：</label>
					<div class="controls">
						<form:input path="bankId" htmlEscape="false" maxlength="12" class="input-large "/>
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
					<label class="control-label">主账户名称：</label>
					<div class="controls">
						<form:input path="accountName" htmlEscape="false" maxlength="180" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">主账户：</label>
					<div class="controls">
						<form:input path="cardNumber" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事件特征码：</label>
					<div class="controls">
						<form:select path="featureCode" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('Tf_Feature_Code')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">备注：</label>
					<div class="controls">
						<form:input path="remark" htmlEscape="false" maxlength="225" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="2000" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="tf:tf100405Main:add"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>