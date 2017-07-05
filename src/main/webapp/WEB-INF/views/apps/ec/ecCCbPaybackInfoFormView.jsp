<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-垫款信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbPaybackInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbPaybackInfo" action="${ctx}/ec/ecCCbPaybackInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbPaybackInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">垫款业务号码：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.paybackTradeNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">原业务号：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.formerBusiNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.financeCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbPaybackInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.recordTraceNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借款人名称：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.borrowerName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.loanCardCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">垫款种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbPaybackInfo.paybackType, 'EC_PAYBACK_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbPaybackInfo.currency, 'EC_CURRENCY', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">垫款金额：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.paybackAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">垫款日期：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.paybackDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">垫款余额：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.paybackBalance}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">余额发生日期：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.balanceOccurDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">还款方式：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbPaybackInfo.repayStyle, 'EC_REPAY_STYLE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">四级分类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbPaybackInfo.fourCla, 'EC_FOUR_CLA', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">五级分类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbPaybackInfo.fiveCla, 'EC_FIVE_CLA', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">错误代码：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.errorCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">源机构代码：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.sourceOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.reportFlag}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.reportOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">主合同编号：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.contractNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">入库状态：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.stockState}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbPaybackInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbPaybackInfo.remarks}
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