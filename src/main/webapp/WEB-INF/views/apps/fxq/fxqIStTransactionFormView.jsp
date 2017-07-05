<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑交易补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIStTransaction" action="${ctx}/fxq/fxqIStTransaction/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqIStTransaction.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqIStTransaction.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户账号：</label>
					<div class="controls-view">
						${fxqIStTransaction.custAcctNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${fxqIStTransaction.txId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人姓名：</label>
					<div class="controls-view">
						${fxqIStTransaction.agentName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.agentCertType, 'FXQ_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${fxqIStTransaction.txAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件号码：</label>
					<div class="controls-view">
						${fxqIStTransaction.agentCertNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点名称：</label>
					<div class="controls-view">
						${fxqIStTransaction.cnterFinOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人国籍：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.agentNation, 'FXQ_NATISING2', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.cnterFinOrgType, 'FXQ_FIN_ORG_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易日期：</label>
					<div class="controls-view">
							${fxqIStTransaction.txDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
							${fxqIStTransaction.txTm}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${fxqIStTransaction.txArea}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码：</label>
					<div class="controls-view">
						${fxqIStTransaction.cnterFinOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务标示号：</label>
					<div class="controls-view">
						${fxqIStTransaction.bizIdNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点行政区划代码：</label>
					<div class="controls-view">
						${fxqIStTransaction.cnterFinOrgDistrictCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易方式：</label>
					<div class="controls-view">
						${fxqIStTransaction.txMethod}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手姓名名称：</label>
					<div class="controls-view">
						${fxqIStTransaction.cnterCustName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">涉外收支交易分类与代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.tsct, 'FXQ_TSCT', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.cnterCertType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资金收付标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手身份证件证明文件号码：</label>
					<div class="controls-view">
						${fxqIStTransaction.cnterCertNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资金来源和用途：</label>
					<div class="controls-view">
						${fxqIStTransaction.fundPurpose}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStTransaction.cnterAcctType, 'FXQ_ACCT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqIStTransaction.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手客户账号：</label>
					<div class="controls-view">
						${fxqIStTransaction.cnterCustAcctNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqIStTransaction.remarks}
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