<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额案例交易列表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqLargeTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqLargeTransaction" action="${ctx}/fxq/fxqLargeTransaction/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqLargeTransaction.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqLargeTransaction.custNo}
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
					    ${fns:getDictLabels(fxqLargeTransaction.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易ID：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报告ID：</label>
					<div class="controls-view">
						${fxqLargeTransaction.reportId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${fxqLargeTransaction.custName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户账号：</label>
					<div class="controls-view">
						${fxqLargeTransaction.custAcctNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.acctType, 'FXQ_ACCT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构：</label>
					<div class="controls-view">
						${fxqLargeTransaction.openOrg}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">开户机构名称：</label>
					<div class="controls-view">
						${fxqLargeTransaction.openOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${fxqLargeTransaction.finOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构名称：</label>
					<div class="controls-view">
						${fxqLargeTransaction.finOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构行政区划代码：</label>
					<div class="controls-view">
						${fxqLargeTransaction.finOrgDistrictCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构代码类型说明：</label>
					<div class="controls-view">
						${fxqLargeTransaction.finOrgType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构和大额交易的关系类型代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.finOrgRelation, 'FXQ_FIN_ORG_RELATION', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易日期：</label>
					<div class="controls-view">
							${fxqLargeTransaction.txDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易时间：</label>
					<div class="controls-view">
							${fxqLargeTransaction.txTm}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报送业务条线：</label>
					<div class="controls-view">
						${fxqLargeTransaction.reportBizLine}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易金额：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">折人民币金额：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txAmtRmb}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">折美元金额：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txAmtUsd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收付标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易代码：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易机构：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txOrg}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易机构名称：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">补录机构：</label>
					<div class="controls-view">
						${fxqLargeTransaction.agrOrg}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易柜员号：</label>
					<div class="controls-view">
						${fxqLargeTransaction.tellerNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易渠道种类：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txChannelType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务标识号：</label>
					<div class="controls-view">
						${fxqLargeTransaction.bizIdNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易方式：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txMethod}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">涉外收支交易分类和代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.tsct, 'FXQ_TSCT', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资金用途：</label>
					<div class="controls-view">
						${fxqLargeTransaction.fundPurpose}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txArea}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易方向：</label>
					<div class="controls-view">
						${fxqLargeTransaction.txDir}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手客户名称：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterCustName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.cnterCertType, 'FXQ_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手证件类型说明：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterCertTypeDesc}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手证件号码：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterCertNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手客户账号：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterCustAcctNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.cnterAcctType, 'FXQ_ACCT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手金融机构代码：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterFinOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手金融机构名称：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterFinOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易对手金融机构行政区划：</label>
					<div class="controls-view">
						${fxqLargeTransaction.cnterFinOrgDistrictCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手金融机构代码网点类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.cnterFinOrgType, 'FXQ_FIN_ORG_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代理人姓名：</label>
					<div class="controls-view">
						${fxqLargeTransaction.agentName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代理人证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.agentCertType, 'FXQ_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代理人证件类型说明：</label>
					<div class="controls-view">
						${fxqLargeTransaction.agentCertTypeDesc}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代理人证件号码：</label>
					<div class="controls-view">
						${fxqLargeTransaction.agentCertNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">代理人国籍代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqLargeTransaction.agentNation, 'FXQ_NATISING2', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验符号：</label>
					<div class="controls-view">
						${fxqLargeTransaction.checkField}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqLargeTransaction.checkInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqLargeTransaction.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqLargeTransaction.remarks}
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