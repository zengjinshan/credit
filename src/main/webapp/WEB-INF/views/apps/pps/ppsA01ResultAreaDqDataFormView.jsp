<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>支付统计流量流向(地区_地区)管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pps/ppsA01ResultAreaDqDataForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ppsA01ResultAreaDqData" action="${ctx}/pps/ppsA01ResultAreaDqData/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期数：</label>
					<div class="controls-view">
						<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${ppsA01ResultAreaDqData.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报表名称：</label>
					<div class="controls-view">
						<form:input path="reportName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">流入地区代码：</label>
					<div class="controls-view">
						<form:input path="inOrgCd" htmlEscape="false" maxlength="10" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">流入地区名称：</label>
					<div class="controls-view">
						<form:input path="inOrgName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">流出地区代码：</label>
					<div class="controls-view">
						<form:input path="outOrgCd" htmlEscape="false" maxlength="10" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">流出地区名称：</label>
					<div class="controls-view">
						<form:input path="outOrgName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">值1(笔数)：</label>
					<div class="controls-view">
						<form:input path="value1" htmlEscape="false" class="input-large " disabled="true"/>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">值2(金额)：</label>
					<div class="controls-view">
						<form:input path="value2" htmlEscape="false" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-large " disabled="true"/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>