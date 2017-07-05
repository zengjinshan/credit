<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>涉案账户交易管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100404TranForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100404Tran" action="${ctx}/tf/tf100404Tran/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
						${tf100404Tran.dataDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传输报文流水号：</label>
					<div class="controls-view">
						${tf100404Tran.transSerialNumber}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一般(子)账户序号：</label>
					<div class="controls-view">
						${tf100404Tran.accountSerial}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${tf100404Tran.txId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易类型：</label>
					<div class="controls-view">
						${tf100404Tran.transactionType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">借贷标志：</label>
					<div class="controls-view">
						${tf100404Tran.borrowingSigns}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
						${tf100404Tran.currency}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${tf100404Tran.transactionAmount}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易余额：</label>
					<div class="controls-view">
						${tf100404Tran.accountBalance}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
						${tf100404Tran.transactionTime}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易流水号：</label>
					<div class="controls-view">
						${tf100404Tran.transactionSerial}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对方名称：</label>
					<div class="controls-view">
						${tf100404Tran.opponentName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对方账卡号：</label>
					<div class="controls-view">
						${tf100404Tran.opponentAccountNumber}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对方证件号码：</label>
					<div class="controls-view">
						${tf100404Tran.opponentCredentialNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对方账号开户行：</label>
					<div class="controls-view">
						${tf100404Tran.opponentDepositBankId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易摘要：</label>
					<div class="controls-view">
						${tf100404Tran.transactionRemark}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易网点名称：</label>
					<div class="controls-view">
						${tf100404Tran.transactionBranchName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易网点代码：</label>
					<div class="controls-view">
						${tf100404Tran.transactionBranchCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">日志号：</label>
					<div class="controls-view">
						${tf100404Tran.logNumber}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传票号：</label>
					<div class="controls-view">
						${tf100404Tran.summonsNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">凭证种类：</label>
					<div class="controls-view">
						${tf100404Tran.voucherType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">凭证号：</label>
					<div class="controls-view">
						${tf100404Tran.voucherCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">现金标志：</label>
					<div class="controls-view">
						${tf100404Tran.cashMark}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">终端号：</label>
					<div class="controls-view">
						${tf100404Tran.terminalNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易是否成功：</label>
					<div class="controls-view">
						${tf100404Tran.transactionStatus}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${tf100404Tran.transactionAddress}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">商户名称：</label>
					<div class="controls-view">
						${tf100404Tran.merchantName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">商户号：</label>
					<div class="controls-view">
						${tf100404Tran.merchantCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">IP地址：</label>
					<div class="controls-view">
						${tf100404Tran.ipAddress}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">MAC地址：</label>
					<div class="controls-view">
						${tf100404Tran.mac}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易柜员号：</label>
					<div class="controls-view">
						${tf100404Tran.tellerCode}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tf100404Tran.remarks}
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