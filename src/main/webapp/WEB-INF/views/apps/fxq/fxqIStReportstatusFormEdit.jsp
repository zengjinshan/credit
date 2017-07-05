<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑报告状态接口表成功管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStReportstatusForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIStReportstatus" action="${ctx}/fxq/fxqIStReportstatus/update" method="post" class="form-horizontal">
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
						<form:input path="reportId" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
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
					<label class="control-label">可疑交易特征：</label>
					<div class="controls">
						<form:input path="stcr" htmlEscape="false" maxlength="300" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">建行模型编号：</label>
					<div class="controls">
						<form:input path="ccbStcr" htmlEscape="false" maxlength="600" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构名称：</label>
					<div class="controls">
						<form:input path="orgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">金融机构所在地区行政区划代码：</label>
					<div class="controls">
						<form:input path="orgDistrictCd" htmlEscape="false" maxlength="12" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码类型：</label>
					<div class="controls">
						<form:input path="orgType" htmlEscape="false" maxlength="2" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">金融机构代码：</label>
					<div class="controls">
						<form:input path="orgCode" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告来源：</label>
					<div class="controls">
						<form:input path="reportSource" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对公对私标志：</label>
					<div class="controls">
						<form:input path="custInd" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告中最小交易日期：</label>
					<div class="controls">
						<form:input path="minDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告中交易最大日期：</label>
					<div class="controls">
						<form:input path="maxDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报送期限：</label>
					<div class="controls">
						<form:input path="periodValue" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告涉及账户数：</label>
					<div class="controls">
						<form:input path="accCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告涉及交易总笔数：</label>
					<div class="controls">
						<form:input path="txCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告涉及交易总金额：</label>
					<div class="controls">
						<form:input path="txAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告涉及人民币交易金额：</label>
					<div class="controls">
						<form:input path="rmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告涉及外币交易金额：</label>
					<div class="controls">
						<form:input path="fcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告涉及外币交易金额占比：</label>
					<div class="controls">
						<form:input path="fcurrTxAmtPct" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报告涉及外币的交易笔数：</label>
					<div class="controls">
						<form:input path="fcurrTxCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告涉及人民币的交易笔数：</label>
					<div class="controls">
						<form:input path="rmbTxCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">传统渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="oldChanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">传统渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="oldChanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">电子银行渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="ebankChanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">电子银行渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="ebankChanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">新兴电子渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="newEchanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">新兴电子渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="newEchanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">其它渠道人民币交易金额：</label>
					<div class="controls">
						<form:input path="otherChanRmbTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其它渠道外币交易金额：</label>
					<div class="controls">
						<form:input path="otherChanFcurrTxAmt" htmlEscape="false" class="input-large  number"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">传统渠道笔数：</label>
					<div class="controls">
						<form:input path="newChanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">电子银行渠道笔数：</label>
					<div class="controls">
						<form:input path="ebankChanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">新兴电子渠道笔数：</label>
					<div class="controls">
						<form:input path="newEchanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其它渠道笔数：</label>
					<div class="controls">
						<form:input path="otherChanCnt" htmlEscape="false" maxlength="18" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">补录机构：</label>
					<div class="controls">
						<form:input path="agrOrg" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇总报送标志：</label>
					<div class="controls">
						<form:input path="sumSendInd" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">自贸区客户类别：</label>
					<div class="controls">
						<form:input path="custType" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-large "/>
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
			<shiro:hasPermission name="fxq:fxqIStReportstatus:edit"><button class="btn_public" type="button" onclick="fxqIStReportstatusForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>