<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>支付统计指标_XML数据管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pps/ppsA01ResultAreaDataXmlForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ppsA01ResultAreaDataXml" action="${ctx}/pps/ppsA01ResultAreaDataXml/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期数：</label>
					<div class="controls-view">
						<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${ppsA01ResultAreaDataXml.dataDt}"
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
					<label class="control-label">指标ID：</label>
					<div class="controls-view">
						<form:input path="indexId" htmlEscape="false" maxlength="18" class="input-large required digits" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">地区类型：</label>
					<div class="controls-view">
						<form:input path="areaType" htmlEscape="false" maxlength="10" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">地区代码：</label>
					<div class="controls-view">
						<form:input path="areaCd" htmlEscape="false" maxlength="10" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">指标代码AND维度代码：</label>
					<div class="controls-view">
						<form:input path="indexAndDimCd" htmlEscape="false" maxlength="20" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">指标代码：</label>
					<div class="controls-view">
						<form:input path="indexCd" htmlEscape="false" maxlength="10" class="input-large " disabled="true"/>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">维度代码：</label>
					<div class="controls-view">
						<form:input path="dimensionCd" htmlEscape="false" maxlength="2" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">维度名称：</label>
					<div class="controls-view">
						<form:input path="dimensionName" htmlEscape="false" maxlength="100" class="input-large " disabled="true"/>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">指标名称：</label>
					<div class="controls-view">
						<form:input path="indexName" htmlEscape="false" maxlength="500" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">指标统计类型：</label>
					<div class="controls-view">
						<form:input path="indexDataType" htmlEscape="false" maxlength="200" class="input-large " disabled="true"/>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">指标统计名称：</label>
					<div class="controls-view">
						<form:input path="indexDataName" htmlEscape="false" maxlength="200" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">值1：</label>
					<div class="controls-view">
						<form:input path="value1" htmlEscape="false" class="input-large " disabled="true"/>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">值2：</label>
					<div class="controls-view">
						<form:input path="value2" htmlEscape="false" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">环比1：</label>
					<div class="controls-view">
						<form:input path="ratio1" htmlEscape="false" class="input-large " disabled="true"/>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">环比2：</label>
					<div class="controls-view">
						<form:input path="ratio2" htmlEscape="false" class="input-large " disabled="true"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">是否开展此项业务：</label>
					<div class="controls-view">
						<form:input path="useFlag" htmlEscape="false" maxlength="1" class="input-large " disabled="true"/>
					</div>
			 	</div>
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
		 		<div class="span6">
					<label class="control-label">多法人标识：</label>
					<div class="controls-view">
						<form:input path="multiCd" htmlEscape="false" maxlength="20" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
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