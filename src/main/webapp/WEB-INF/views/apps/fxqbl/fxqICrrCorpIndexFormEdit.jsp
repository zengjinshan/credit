<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对公客户综合评价指分数表接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrCorpIndexForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqICrrCorpIndex" action="${ctx}/fxqbl/fxqICrrCorpIndex/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${fxqICrrCorpIndex.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">指标代码：</label>
					<div class="controls">
						<form:input path="indexCd" htmlEscape="false" maxlength="9" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">指标分数：</label>
					<div class="controls">
						<form:input path="indexScore" htmlEscape="false" maxlength="18" class="input-large "/>
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
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxqbl:fxqICrrCorpIndex:modify"><button class="btn_public" type="button" onclick="fxqICrrCorpIndexForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>