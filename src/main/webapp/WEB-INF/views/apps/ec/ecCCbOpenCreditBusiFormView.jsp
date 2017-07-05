<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-公开授信管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbOpenCreditBusiForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbOpenCreditBusi" action="${ctx}/ec/ecCCbOpenCreditBusi/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbOpenCreditBusi.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">授信协议号码：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.creditAgrNo}
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
						${ecCCbOpenCreditBusi.financeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbOpenCreditBusi.recordOpType, 'EC_RECORD_OP_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.recordTraceNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">借款人名称：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.borrowerName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.loanCardCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbOpenCreditBusi.currency, 'EC_CURRENCY', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">授信额度：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.creditLimit}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">授信生效起始日期：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.creditStartDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">授信终止日期：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.creditEndDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">授信额度注销生效日期：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.creditLimitLogoutDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">授信额度注销原因：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.creditLimitLogoutReason}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">错误代码：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.errorCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">源机构代码：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.sourceOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">标示变更段值：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.changeValue}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.reportFlag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.reportOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">入库状态：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.stockState}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbOpenCreditBusi.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbOpenCreditBusi.remarks}
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