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
					<div class="controls-view">
						${tf100405Tran.dataDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传输报文流水号：</label>
					<div class="controls-view">
						${tf100405Tran.transSerialNumber}
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
						${tf100405Tran.accountSerial}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${tf100405Tran.txId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事件特征码：</label>
					<div class="controls-view">
						${tf100405Tran.featureCode}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易类型：</label>
					<div class="controls-view">
						${tf100405Tran.transactionType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借贷标志：</label>
					<div class="controls-view">
						${tf100405Tran.borrowingSigns}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
						${tf100405Tran.currency}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${tf100405Tran.transactionAmount}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易余额：</label>
					<div class="controls-view">
						${tf100405Tran.accountBalance}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
						${tf100405Tran.transactionTime}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易流水号：</label>
					<div class="controls-view">
						${tf100405Tran.transactionSerial}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对方名称：</label>
					<div class="controls-view">
						${tf100405Tran.opponentName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对方账卡号：</label>
					<div class="controls-view">
						${tf100405Tran.opponentAccountNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对方证件号码：</label>
					<div class="controls-view">
						${tf100405Tran.opponentCredentialNumber}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对方账号开户行：</label>
					<div class="controls-view">
						${tf100405Tran.opponentDepositBankId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易摘要：</label>
					<div class="controls-view">
						${tf100405Tran.transactionRemark}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易网点名称：</label>
					<div class="controls-view">
						${tf100405Tran.transactionBranchName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易网点代码：</label>
					<div class="controls-view">
						${tf100405Tran.transactionBranchCode}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">日志号：</label>
					<div class="controls-view">
						${tf100405Tran.logNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">传票号：</label>
					<div class="controls-view">
						${tf100405Tran.summonsNumber}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">凭证种类：</label>
					<div class="controls-view">
						${tf100405Tran.voucherType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">凭证号：</label>
					<div class="controls-view">
						${tf100405Tran.voucherCode}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">现金标志：</label>
					<div class="controls-view">
						${tf100405Tran.cashMark}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">终端号：</label>
					<div class="controls-view">
						${tf100405Tran.terminalNumber}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易是否成功：</label>
					<div class="controls-view">
						${tf100405Tran.transactionStatus}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${tf100405Tran.transactionAddress}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">商户名称：</label>
					<div class="controls-view">
						${tf100405Tran.merchantName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">商户号：</label>
					<div class="controls-view">
						${tf100405Tran.merchantCode}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">IP地址：</label>
					<div class="controls-view">
						${tf100405Tran.ipAddress}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">MAC地址：</label>
					<div class="controls-view">
						${tf100405Tran.mac}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易柜员号：</label>
					<div class="controls-view">
						${tf100405Tran.tellerCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">备注：</label>
					<div class="controls-view">
						${tf100405Tran.remark}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tf100405Tran.remarks}
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