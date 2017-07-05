<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>监管反馈信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regFeedbackInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="regFeedbackInfo" action="${ctx}/base/regFeedbackInfo/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
		<div class="control-group">
			<div class="container-fluid">
		 		<div class="span8">
					<label class="control-label">报文文件名称：</label>
					<div class="controls">
						<form:input path="fileName" htmlEscape="false" maxlength="100" class="input-xlarge "/>
					</div>
			 	</div>
			</div>
		</div> 	
		<div class="control-group">
			<div class="container-fluid">
		 		<div class="span8">
					<label class="control-label">反馈文件名称：</label>
					<div class="controls">
						<form:input path="feedbackFileName" htmlEscape="false" maxlength="500" class="input-xlarge "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="container-fluid">
		 		<div class="span8">
					<label class="control-label">文件路径：</label>
					<div class="controls">
						<form:input path="feedbackFilePath" htmlEscape="false" maxlength="500" class="input-xlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
			<div class="container-fluid">
		 		<div class="span8">
					<label class="control-label">反馈标识：</label>
					<div class="controls">
						<form:select path="feedbackFlag" class="input-xlarge ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FEEDBACK_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
			<div class="container-fluid">
		 		<div class="span8">
					<label class="control-label">反馈解析标识：</label>
					<div class="controls">
						<form:select path="resolveFlag" class="input-xlarge ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('RESOLVE_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="container-fluid">
		 		<div class="span12">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<%-- <shiro:hasPermission name="base:regFeedbackInfo:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission> --%>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>