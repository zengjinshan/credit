<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-承兑汇票业务管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbAcceptMoneyBusiForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbAcceptMoneyBusi" action="${ctx}/ec/ecCCbAcceptMoneyBusi/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbAcceptMoneyBusi.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">债项编号：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.loanNum}
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
						${ecCCbAcceptMoneyBusi.financeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">承兑协议号码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.acceptAgrNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票号码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.moneyOrderNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">授信协议号码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.creditAgrNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.recordTraceNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">出票人名称：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.remitterName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.loanCardCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbAcceptMoneyBusi.currency, 'EC_CURRENCY', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">汇票金额：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.moneyOrderAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票承兑日：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.moneyOrderAcceptDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">汇票到期日：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.moneyOrderEndDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票付款日期：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.moneyOrderPayDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">保证金比例：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.securityMoneyPer}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">担保标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbAcceptMoneyBusi.guarFlag, 'EC_GUAR_FLAG', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">垫款标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbAcceptMoneyBusi.paybackFlag, 'EC_PAYBACK_FLAG', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票状态：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbAcceptMoneyBusi.moneyOrderStatus, 'EC_DRAFT_STATUS', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">五级分类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbAcceptMoneyBusi.fiveCla, 'EC_FIVE_CLA', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">错误代码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.errorCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">源机构代码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.sourceOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">变更标示段值：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.changeValue}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.reportFlag}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.reportOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">入库状态：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.stockState}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbAcceptMoneyBusi.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbAcceptMoneyBusi.remarks}
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