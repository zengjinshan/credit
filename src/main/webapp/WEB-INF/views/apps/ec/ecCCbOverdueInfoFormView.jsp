<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-欠息信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbOverdueInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbOverdueInfo" action="${ctx}/ec/ecCCbOverdueInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbOverdueInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbOverdueInfo.currency, 'EC_CURRENCY', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">欠息类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbOverdueInfo.overdueInterestType, 'EC_OVERDUE_INTEREST_TYPE', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.customerNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.loanCardCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.financeCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借款人名称：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.borrowerName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbOverdueInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.recordTraceNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">欠息金额：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.overdueInterestBanlance}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">欠息余额改变日期：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.overdueInterestShiftDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">错误代码：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.errorCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">变更标示段值：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.changeValue}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">源机构代码：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.sourceOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.reportFlag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.reportOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">入库状态：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.stockState}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbOverdueInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbOverdueInfo.remarks}
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