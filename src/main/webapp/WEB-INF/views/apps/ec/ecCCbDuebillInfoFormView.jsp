<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借据信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbDuebillInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbDuebillInfo" action="${ctx}/ec/ecCCbDuebillInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbDuebillInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">借据编号：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.duebillNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.currency, 'EC_CURRENCY', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款借据金额：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.loanDuebillAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款借据余额：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.loanDuebillBalance}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">借据放款日期：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.duebillOutDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借据放款到期日：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.duebillMatureDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款业务种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.loanBusiType, 'EC_LOAN_BUSI_TYPE1', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款形式：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.loanType, 'EC_LOAN_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款性质：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.loanChar, 'EC_LOAN_CHAR', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款投向：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.loanSend}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.loanKind, 'EC_LOAN_KIND', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">展期标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.extensionFlag, 'EC_EXTENSION_FLAG', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">四级分类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.fourCla, 'EC_FOUR_CLA', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">五级分类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.fiveCla, 'EC_FIVE_CLA', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款合同号码：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.loanContractNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.reportFlag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbDuebillInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbDuebillInfo.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbDuebillInfo.remarks}
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