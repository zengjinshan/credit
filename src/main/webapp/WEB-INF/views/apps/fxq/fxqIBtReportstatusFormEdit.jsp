<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>保存大额报告状态接口表表成功管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtReportstatusForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIBtReportstatus" action="${ctx}/fxq/fxqIBtReportstatus/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告ID：</label>
					<div class="controls">
						<form:input path="reportId" htmlEscape="false" maxlength="50" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户名称：</label>
					<div class="controls">
						<form:input path="custName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户类型代码：</label>
					<div class="controls">
						<form:input path="custInd" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报送机构：</label>
					<div class="controls">
						<form:input path="reportOrg" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报送机构名称：</label>
					<div class="controls">
						<form:input path="reportOrgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">大额交易特征代码：</label>
					<div class="controls">
						<form:input path="hhTxFeaCd" htmlEscape="false" maxlength="300" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告来源类型代码：</label>
					<div class="controls">
						<form:input path="reportSource" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱大额交易笔数：</label>
					<div class="controls">
						<form:input path="txCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱交易主体客户个数：</label>
					<div class="controls">
						<form:input path="custCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱报告报送期限：</label>
					<div class="controls">
						<form:input path="periodValue" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱报告涉及金额：</label>
					<div class="controls">
						<form:input path="rmbTxSumAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱报告涉及人民币交易金额：</label>
					<div class="controls">
						<form:input path="rmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱报告涉及外币交易金额：</label>
					<div class="controls">
						<form:input path="fcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱报告涉及外币交易金额占比：</label>
					<div class="controls">
						<form:input path="fcurrTxAmtPct" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱报告涉及外币交易笔数：</label>
					<div class="controls">
						<form:input path="fcurrTxCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱报告涉及人民币交易笔数：</label>
					<div class="controls">
						<form:input path="rmbTxCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱传统渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="oldChanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱传统渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="oldChanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱电子银行渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="ebankChanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱电子银行渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="ebankChanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱新兴电子渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="newEchanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱新兴电子渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="newEchanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱其它渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="otherChanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱其它渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="otherChanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱传统渠道交易笔数：</label>
					<div class="controls">
						<form:input path="oldChanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱电子银行渠道交易笔数：</label>
					<div class="controls">
						<form:input path="ebankChanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">反洗钱新兴电子渠道交易笔数：</label>
					<div class="controls">
						<form:input path="newEchanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">反洗钱其他渠道交易笔数：</label>
					<div class="controls">
						<form:input path="otherChanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
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
		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqIBtReportstatus:edit"><button class="btn_public" type="button" onclick="fxqIBtReportstatusForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>