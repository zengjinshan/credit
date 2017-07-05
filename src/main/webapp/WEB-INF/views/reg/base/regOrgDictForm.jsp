<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>机构对照表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regOrgDictForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regOrgDict" action="${ctx}/base/regOrgDict/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">源系统机构编号：</label>
			<div class="controls">
				<form:input path="sourceOrgCode" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">源系统机构名称：</label>
			<div class="controls">
				<form:input path="sourceOrgName" htmlEscape="false" maxlength="1000" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">本系统机构：</label>
			<div class="controls">
				<sys:treeselect id="regOrgCode" name="regOrgCode" value="${regOrgDict.regOrgCode}" labelName="regOrgName" labelValue="${regOrgDict.regOrgName}"
					title="部门" url="/sys/office/treeData?type=2" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">金融机构代码(个人征信)：</label>
			<div class="controls">
				<form:input path="deptCode" htmlEscape="false" maxlength="14" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">报告机构编码(反洗钱)：</label>
			<div class="controls">
				<form:input path="reportOrgCode" htmlEscape="false" maxlength="15" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">金融机构代码(企业征信)：</label>
			<div class="controls">
				<form:input path="ecReportCode" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">上报银行机构编码(电信诈骗)：</label>
			<div class="controls">
				<form:input path="tfReportCode" htmlEscape="false" maxlength="12" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="base:regOrgDict:edit"><button class="btn_public" type="button" onclick="regOrgDictForm.isOne();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>