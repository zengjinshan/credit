<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报送表结构配置管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regStructForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regStruct" action="${ctx}/base/regStruct/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">所属系统：</label>
			<div class="controls">
				<form:input path="belongSys" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">表英文名称：</label>
			<div class="controls">
				<form:input path="tableName" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">表中文名称：</label>
			<div class="controls">
				<form:input path="tableComment" htmlEscape="false" maxlength="500" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">序号：</label>
			<div class="controls">
				<form:input path="fieldNo" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">字段英文名：</label>
			<div class="controls">
				<form:input path="fieldName" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">字段中文名：</label>
			<div class="controls">
				<form:input path="fieldComments" htmlEscape="false" maxlength="500" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">长度：</label>
			<div class="controls">
				<form:input path="fieldLength" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">精度：</label>
			<div class="controls">
				<form:input path="fieldPrecision" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">报文节点名称：</label>
			<div class="controls">
				<form:input path="fieldNodeName" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">是否脱敏：</label>
			<div class="controls">
				<form:input path="isSensitive" htmlEscape="false" maxlength="1" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">是否上报字段：</label>
			<div class="controls">
				<form:input path="isSend" htmlEscape="false" maxlength="1" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="2000" class="input-xxlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">所属文件英文：</label>
			<div class="controls">
				<form:input path="belongFile" htmlEscape="false" maxlength="50" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">主表序号：</label>
			<div class="controls">
				<form:input path="tableNo" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">加工规则,如1(前补0),2(后补0),3(前补空格),4(后补空格),5(固定值),6(段标)：</label>
			<div class="controls">
				<form:input path="processRule" htmlEscape="false" maxlength="2" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">固定值：</label>
			<div class="controls">
				<form:input path="fixValue" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">关联条件：</label>
			<div class="controls">
				<form:input path="whereInfo" htmlEscape="false" maxlength="500" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">从表序号：</label>
			<div class="controls">
				<form:input path="subTableNo" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="base:regStruct:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>