<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-财务部联系方式管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbFinanceLinkModeForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbFinanceLinkMode" action="${ctx}/ec/ecCBbFinanceLinkMode/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">地址ID：</label>
					<div class="controls">
						<form:input path="addressId" htmlEscape="false" maxlength="12" class="input-large required digits" disabled="true"/>
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
					<label class="control-label">财务部联系方式：</label>
					<div class="controls">
						<form:input path="financeLinkMode" htmlEscape="false" maxlength="100" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">上报标志：</label>
					<div class="controls">
						<form:input path="reportFlag" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
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
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="2000" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="ec:ecCBbFinanceLinkMode:modify"><button class="btn_public" type="button" onclick="ecCBbFinanceLinkModeForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>