<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtCustomerForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIBtCustomer" action="${ctx}/fxq/fxqIBtCustomer/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${fxqIBtCustomer.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls">
						<form:input path="custName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">证件类型代码：</label>
					<div class="controls">
						<form:select path="certType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
						<form:input path="certNum" htmlEscape="false" maxlength="120" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">国籍代码：</label>
					<div class="controls">
						<form:select path="natising2" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_NATISING2')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls">
						<form:select path="checkInfo" class="input-large-select-edit " multiple="true">
							<form:options items="${fns:getDictList('FXQ_CHECK_INFO')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
			</div>
		</div>

		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqIBtCustomer:add"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>