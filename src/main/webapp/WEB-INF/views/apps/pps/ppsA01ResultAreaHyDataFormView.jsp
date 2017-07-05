<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>支付统计流量流向(行业_地区)管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pps/ppsA01ResultAreaHyDataForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ppsA01ResultAreaHyData" action="${ctx}/pps/ppsA01ResultAreaHyData/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期数：</label>
					<div class="controls-view">
						<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${ppsA01ResultAreaHyData.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMM',isShowClear:false});" disabled="true"/>
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
					<label class="control-label">流入行业代码：</label>
					<div class="controls-view">
						<form:input path="inIndustryCd" htmlEscape="false" maxlength="10" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">流入行业名称：</label>
					<div class="controls-view">
						<form:input path="inIndustryName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">流出行业代码：</label>
					<div class="controls-view">
						<form:input path="outIndustryCd" htmlEscape="false" maxlength="10" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">流出行业名称：</label>
					<div class="controls-view">
						<form:input path="outIndustryName" htmlEscape="false" maxlength="100" class="input-large required" disabled="true"/>
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