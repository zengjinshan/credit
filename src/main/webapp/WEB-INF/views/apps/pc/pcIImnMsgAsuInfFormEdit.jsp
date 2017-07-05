<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>担保人信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcIImnMsgAsuInfForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="pcIImnMsgAsuInf" action="${ctx}/pc/pcIImnMsgAsuInf/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号：</label>
					<div class="controls">
						<form:input path="aaBusiNo" htmlEscape="false" maxlength="40" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">担保人姓名：</label>
					<div class="controls">
						<form:input path="eeAssuName" htmlEscape="false" maxlength="30" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">担保人证件类型：</label>
					<div class="controls">
						<form:select path="eeAssuCertTp" class="input-large required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_CERT_TP')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">担保人证件号码：</label>
					<div class="controls">
						<form:input path="eeAssuCertNo" htmlEscape="false" maxlength="18" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">担保人担保金额：</label>
					<div class="controls">
						<form:input path="eeAssuAmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">担保人担保状态：</label>
					<div class="controls">
						<form:select path="eeAsuManState" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_EE_ASU_MAN_STATE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls">
						<form:select path="aaProd" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_PROD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
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
			<shiro:hasPermission name="pc:pcIImnMsgAsuInf:modify"><button class="btn_public" type="button" onclick="pcIImnMsgAsuInfForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>