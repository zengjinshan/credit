<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>反洗钱报文登记表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/regFxqCustFileForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regFxqCustFile" action="${ctx}/fxq/regFxqCustFile/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">数据日期：</label>
			<div class="controls">
				<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${regFxqCustFile.dataDt}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">客户编号：</label>
			<div class="controls">
				<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">报告类型：</label>
			<div class="controls">
				<form:select path="custType" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_CUST_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">报告机构编码：</label>
			<div class="controls">
				<form:input path="reportOrgCode" htmlEscape="false" maxlength="15" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">报送日期：</label>
			<div class="controls">
				<input name="sendDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${regFxqCustFile.sendDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">文件批次：</label>
			<div class="controls">
				<form:input path="fileBatch" htmlEscape="false" maxlength="4" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">文件序号：</label>
			<div class="controls">
				<form:input path="fileNum" htmlEscape="false" maxlength="4" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxq:regFxqCustFile:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>