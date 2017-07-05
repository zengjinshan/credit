<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常事件交易管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100405TranForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100405Tran" action="${ctx}/tf/tf100405Tran/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">传输报文流水号：</label>
					<div class="controls">
						<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一般(子)账户序号：</label>
					<div class="controls">
						<form:input path="accountSerial" htmlEscape="false" maxlength="8" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易ID：</label>
					<div class="controls">
						<form:input path="txId" htmlEscape="false" maxlength="50" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事件特征码：</label>
					<div class="controls">
						<form:input path="featureCode" htmlEscape="false" maxlength="4" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易类型：</label>
					<div class="controls">
						<form:input path="transactionType" htmlEscape="false" maxlength="50" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借贷标志：</label>
					<div class="controls">
						<form:input path="borrowingSigns" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">币种：</label>
					<div class="controls">
						<form:input path="currency" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls">
						<form:input path="transactionAmount" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易余额：</label>
					<div class="controls">
						<form:input path="accountBalance" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls">
						<form:input path="transactionTime" htmlEscape="false" maxlength="14" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易流水号：</label>
					<div class="controls">
						<form:input path="transactionSerial" htmlEscape="false" maxlength="50" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对方名称：</label>
					<div class="controls">
						<form:input path="opponentName" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对方账卡号：</label>
					<div class="controls">
						<form:input path="opponentAccountNumber" htmlEscape="false" maxlength="50" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对方证件号码：</label>
					<div class="controls">
						<form:input path="opponentCredentialNumber" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对方账号开户行：</label>
					<div class="controls">
						<form:input path="opponentDepositBankId" htmlEscape="false" maxlength="90" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易摘要：</label>
					<div class="controls">
						<form:input path="transactionRemark" htmlEscape="false" maxlength="225" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易网点名称：</label>
					<div class="controls">
						<form:input path="transactionBranchName" htmlEscape="false" maxlength="255" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易网点代码：</label>
					<div class="controls">
						<form:input path="transactionBranchCode" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">日志号：</label>
					<div class="controls">
						<form:input path="logNumber" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">传票号：</label>
					<div class="controls">
						<form:input path="summonsNumber" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">凭证种类：</label>
					<div class="controls">
						<form:input path="voucherType" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">凭证号：</label>
					<div class="controls">
						<form:input path="voucherCode" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">现金标志：</label>
					<div class="controls">
						<form:input path="cashMark" htmlEscape="false" maxlength="2" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">终端号：</label>
					<div class="controls">
						<form:input path="terminalNumber" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易是否成功：</label>
					<div class="controls">
						<form:input path="transactionStatus" htmlEscape="false" maxlength="2" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls">
						<form:input path="transactionAddress" htmlEscape="false" maxlength="225" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">商户名称：</label>
					<div class="controls">
						<form:input path="merchantName" htmlEscape="false" maxlength="225" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">商户号：</label>
					<div class="controls">
						<form:input path="merchantCode" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">IP地址：</label>
					<div class="controls">
						<form:input path="ipAddress" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">MAC地址：</label>
					<div class="controls">
						<form:input path="mac" htmlEscape="false" maxlength="50" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易柜员号：</label>
					<div class="controls">
						<form:input path="tellerCode" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">备注：</label>
					<div class="controls">
						<form:input path="remark" htmlEscape="false" maxlength="225" class="input-large "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="2000" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="tf:tf100405Tran:modify"><button class="btn_public" type="button" onclick="tf100405TranForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>