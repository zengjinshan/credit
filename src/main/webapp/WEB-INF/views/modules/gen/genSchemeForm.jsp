<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生成方案管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/modules/js/gen/genSchemeForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="genScheme" action="${ctx}/gen/genScheme/save" method="post" class="form-horizontal">
		<form:hidden path="id"/><form:hidden path="flag"/>
		<sys:message content="${message}"/>
		<div class="control-group">
			<label class="control-label">方案名称:</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="200" class="required"/>
				<span class="help-inline"></span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">模板分类:</label>
			<div class="controls">
				<form:select path="category" class="required input-xlarge">
					<form:options items="${config.categoryList}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
				<span class="help-inline">
					生成结构：{包名}/{模块名}/{分层(dao,entity,service,web)}/{子模块名}/{java类}
				</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成包路径:</label>
			<div class="controls">
				<form:input path="packageName" htmlEscape="false" maxlength="500" class="required input-xlarge"/>
				<span class="help-inline">建议模块包：com.tansun.easycare.modules</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成模块名:</label>
			<div class="controls">
				<form:input path="moduleName" htmlEscape="false" maxlength="500" class="required input-xlarge"/>
				<span class="help-inline">可理解为子系统名，例如 sys</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成子模块名:</label>
			<div class="controls">
				<form:input path="subModuleName" htmlEscape="false" maxlength="500" class="input-xlarge"/>
				<span class="help-inline">可选，分层下的文件夹，例如 </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成功能描述:</label>
			<div class="controls">
				<form:input path="functionName" htmlEscape="false" maxlength="500" class="required input-xlarge"/>
				<span class="help-inline">将设置到类描述</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成功能名:</label>
			<div class="controls">
				<form:input path="functionNameSimple" htmlEscape="false" maxlength="500" class="required input-xlarge"/>
				<span class="help-inline">用作功能提示，如：保存“某某”成功</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成功能作者:</label>
			<div class="controls">
				<form:input path="functionAuthor" htmlEscape="false" maxlength="500" class="required input-xlarge"/>
				<span class="help-inline">功能开发者</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">业务表名:</label>
			<div class="controls">
				<form:select path="genTable.id" class="required input-xlarge">
					<form:options items="${tableList}" itemLabel="nameAndComments" itemValue="id" htmlEscape="false"/>
				</form:select>
				<span class="help-inline">生成的数据表，一对多情况下请选择主表。</span>
			</div>
		</div>
		<div class="control-group hide">
			<label class="control-label">备注:</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生成选项:</label>
			<div class="controls">
				<form:checkbox path="replaceFile" label="是否替换现有文件"/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="gen:genScheme:edit">
				<!-- <input id="btnSubmit" class="btn_public" type="submit" value="保存方案" onclick="$('#flag').val('0');"/> -->
				<button class="btn_public" type="submit" onclick="$('#flag').val('0');"><i class="icon button_save"></i>保存方案</button>&nbsp;
				<input id="btnSubmit" class="btn btn-danger" type="submit" value="保存并生成代码" onclick="$('#flag').val('1');"/>&nbsp;
			</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>
