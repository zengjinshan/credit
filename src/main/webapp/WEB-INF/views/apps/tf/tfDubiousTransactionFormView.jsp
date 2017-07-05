<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>电信可疑案例交易列表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfDubiousTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tfDubiousTransaction" action="${ctx}/tf/tfDubiousTransaction/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${tfDubiousTransaction.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${tfDubiousTransaction.custNo}
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
						${tfDubiousTransaction.custAcctNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txId}
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
						${tfDubiousTransaction.txDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txTm}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${tfDubiousTransaction.custName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls-view">
						${tfDubiousTransaction.custInd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls-view">
						${tfDubiousTransaction.acctType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls-view">
						${tfDubiousTransaction.bizType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">涉及业务类型代码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.bizTypeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">系统账户：</label>
					<div class="controls-view">
						${tfDubiousTransaction.accountNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户开户时间：</label>
					<div class="controls-view">
						${tfDubiousTransaction.openDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户销户时间：</label>
					<div class="controls-view">
						${tfDubiousTransaction.closeDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人姓名：</label>
					<div class="controls-view">
						${tfDubiousTransaction.agentName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代办人证件类型说明：</label>
					<div class="controls-view">
						${tfDubiousTransaction.agentCertTypeDesc}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.agentCertType, 'FXQ_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件号码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.agentCertNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人国籍：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.agentNation, 'FXQ_NATISING2', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务标示号：</label>
					<div class="controls-view">
						${tfDubiousTransaction.bizIdNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易代码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易方式：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txMethod}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txArea}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易渠道：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txChannelType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易方向：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txDir}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资金收付标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资金来源和用途：</label>
					<div class="controls-view">
						${tfDubiousTransaction.fundPurpose}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">涉外收支交易分类与代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.tsct, 'FXQ_TSCT', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对方金融机构网点名称：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterFinOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.cnterFinOrgType, 'FXQ_FIN_ORG_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterFinOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对方金融机构网点行政区划代码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterFinOrgDistrictCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手姓名名称：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterCustName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.cnterCertType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手证件类型说明：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterCertTypeDesc}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手身份证件证明文件号码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterCertNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfDubiousTransaction.cnterAcctType, 'FXQ_ACCT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手客户账号：</label>
					<div class="controls-view">
						${tfDubiousTransaction.cnterCustAcctNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">折合美元的交易金额：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txAmtUsd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">折合人民币的交易金额：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txAmtRmb}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报送业务条线：</label>
					<div class="controls-view">
						${tfDubiousTransaction.reportBizLine}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">电信诈骗机构：</label>
					<div class="controls-view">
						${tfDubiousTransaction.tfOrg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构代码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.openOrg}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">开户机构名称：</label>
					<div class="controls-view">
						${tfDubiousTransaction.openOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构行政区划：</label>
					<div class="controls-view">
						${tfDubiousTransaction.openOrgDistrictCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易机构代码：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txOrg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易机构名称：</label>
					<div class="controls-view">
						${tfDubiousTransaction.txOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">补录机构：</label>
					<div class="controls-view">
						${tfDubiousTransaction.agrOrg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">建行模型编号：</label>
					<div class="controls-view">
						${tfDubiousTransaction.ccbStcr}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">终端信息：</label>
					<div class="controls-view">
						${tfDubiousTransaction.terminalInfo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
						${tfDubiousTransaction.modiInfo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">校验符：</label>
					<div class="controls-view">
						${tfDubiousTransaction.checkField}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">柜员号：</label>
					<div class="controls-view">
						${tfDubiousTransaction.tellerNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报送标志：</label>
					<div class="controls-view">
						${tfDubiousTransaction.rptFlag}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${tfDubiousTransaction.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tfDubiousTransaction.remarks}
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