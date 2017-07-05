<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>信息报告临时表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqTInfoRptForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqTInfoRpt" action="${ctx}/fxqbl/fxqTInfoRpt/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${fxqTInfoRpt.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">风险因素编号：</label>
					<div class="controls">
						<form:select path="riskElementNum" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_RISK_ELEMENT_NUM')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">有效期开始日期：</label>
					<div class="controls">
						<input id="beginDt" name="beginDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${fxqTInfoRpt.beginDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">有效期结束日期：</label>
					<div class="controls">
						<input id="endDt" name="endDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${fxqTInfoRpt.endDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">人工失效日期：</label>
					<div class="controls">
						<input id="manualEndDt" name="manualEndDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${fxqTInfoRpt.manualEndDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息报告生成日期：</label>
					<div class="controls">
						<input id="infrptGenDt" name="infrptGenDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${fxqTInfoRpt.infrptGenDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">是否决定性因素：</label>
					<div class="controls">
						<form:select path="isKeyFlag" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_IS_KEY_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls">
						<form:select path="corpIndvInd" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CORP_INDV_IND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
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
			<shiro:hasPermission name="fxqbl:fxqTInfoRpt:modify"><button class="btn_public" type="button" onclick="fxqTInfoRptForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>