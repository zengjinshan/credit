<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-贷款合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbLoanBusiForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbLoanBusi" action="${ctx}/ec/ecCCbLoanBusi/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbLoanBusi.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款合同号码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.loanContractNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.financeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.loanCardCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借款人名称：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.borrowerName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">授信协议号码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.creditAgrNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款合同生效日期：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.loanValidDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款合同终止日期：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.loanEndDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">银团标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbLoanBusi.bankCorpFlag, 'EC_BANK_CORP_FLAG', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbLoanBusi.guarFlag, 'EC_GUAR_FLAG', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">合同有效状态：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbLoanBusi.contractValidState, 'EC_CONTRACT_VALID_STATE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbLoanBusi.recordOpType, 'EC_RECORD_OP_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.recordTraceNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">错误代码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.errorCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">源机构代码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.sourceOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">变更标示段值：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.changeValue}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.reportFlag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.reportOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">入库状态：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.stockState}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录类型：</label>
					<div class="controls-view">
						${ecCCbLoanBusi.recordTraceCd}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbLoanBusi.remarks}
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