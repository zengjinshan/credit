<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑案例交易列表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqDubiousTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqDubiousTransaction" action="${ctx}/fxq/fxqDubiousTransaction/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqDubiousTransaction.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.custNo}
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
						${fxqDubiousTransaction.custAcctNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易日期：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txTm}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.custName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.custInd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.acctType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.bizType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">涉及业务类型代码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.bizTypeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">系统账户：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.accountNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户开户时间：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.openDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户销户时间：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.closeDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人姓名：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.agentName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代办人证件类型说明：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.agentCertTypeDesc}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.agentCertType, 'FXQ_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件号码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.agentCertNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人国籍：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.agentNation, 'FXQ_NATISING2', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务标示号：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.bizIdNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易代码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易方式：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txMethod}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txArea}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易渠道：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txChannelType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易方向：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txDir}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资金收付标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资金来源和用途：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.fundPurpose}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">涉外收支交易分类与代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.tsct, 'FXQ_TSCT', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对方金融机构网点名称：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterFinOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.cnterFinOrgType, 'FXQ_FIN_ORG_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterFinOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点行政区划代码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterFinOrgDistrictCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手姓名名称：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterCustName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.cnterCertType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手证件类型说明：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterCertTypeDesc}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手身份证件证明文件号码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterCertNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqDubiousTransaction.cnterAcctType, 'FXQ_ACCT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手客户账号：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.cnterCustAcctNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">折合美元的交易金额：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txAmtUsd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">折合人民币的交易金额：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txAmtRmb}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报送业务条线：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.reportBizLine}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">反洗钱机构：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.fxqOrg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构代码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.openOrg}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">开户机构名称：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.openOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构行政区划：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.openOrgDistrictCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易机构代码：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txOrg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易机构名称：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.txOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">补录机构：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.agrOrg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">建行模型编号：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.ccbStcr}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">终端信息：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.terminalInfo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqDubiousTransaction.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">校验符：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.checkField}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">柜员号：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.tellerNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报送标志：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.rptFlag}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqDubiousTransaction.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqDubiousTransaction.remarks}
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