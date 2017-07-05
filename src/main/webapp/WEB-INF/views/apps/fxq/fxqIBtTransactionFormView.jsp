<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额交易补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIBtTransaction" action="${ctx}/fxq/fxqIBtTransaction/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqIBtTransaction.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqIBtTransaction.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额交易特征代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${fxqIBtTransaction.txId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${fxqIBtTransaction.custName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户账号：</label>
					<div class="controls-view">
						${fxqIBtTransaction.custAcctNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.acctType, 'FXQ_ACCT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">开户机构名称：</label>
					<div class="controls-view">
						${fxqIBtTransaction.openOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${fxqIBtTransaction.finOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构行政区划代码：</label>
					<div class="controls-view">
						${fxqIBtTransaction.finOrgDistrictCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码类型说明：</label>
					<div class="controls-view">
						${fxqIBtTransaction.finOrgType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构和大额交易的关系类型代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.finOrgRelation, 'FXQ_FIN_ORG_RELATION', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易日期：</label>
					<div class="controls-view">
							${fxqIBtTransaction.txDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
							${fxqIBtTransaction.txTm}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${fxqIBtTransaction.txAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收付标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易机构名称：</label>
					<div class="controls-view">
						${fxqIBtTransaction.txOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务标识号：</label>
					<div class="controls-view">
						${fxqIBtTransaction.bizIdNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易方式：</label>
					<div class="controls-view">
						${fxqIBtTransaction.txMethod}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">涉外收支交易分类和代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.tsct, 'FXQ_TSCT', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资金用途：</label>
					<div class="controls-view">
						${fxqIBtTransaction.fundPurpose}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${fxqIBtTransaction.txArea}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易方向：</label>
					<div class="controls-view">
						${fxqIBtTransaction.txDir}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手客户名称：</label>
					<div class="controls-view">
						${fxqIBtTransaction.cnterCustName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.cnterCertType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手证件号码：</label>
					<div class="controls-view">
						${fxqIBtTransaction.cnterCertNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手客户账号：</label>
					<div class="controls-view">
						${fxqIBtTransaction.cnterCustAcctNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.cnterAcctType, 'FXQ_ACCT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手金融机构名称：</label>
					<div class="controls-view">
						${fxqIBtTransaction.cnterFinOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手金融机构代码网点类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtTransaction.cnterFinOrgType, 'FXQ_FIN_ORG_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqIBtTransaction.checkInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqIBtTransaction.remarks}
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