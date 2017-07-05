<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-贷款还款信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbLoanRepayInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbLoanRepayInfo" action="${ctx}/ec/ecCCbLoanRepayInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">还款信息ID：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.repayInfoId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbLoanRepayInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借据编号：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.duebillNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">还款日期：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.repayDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">还款次数：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.repayTimes}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">还款方式：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbLoanRepayInfo.repayStyle, 'EC_REPAY_STYLE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">还款金额：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.repayAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录类型：</label>
					<div class="controls-view">
						${ecCCbLoanRepayInfo.recordTraceCd}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbLoanRepayInfo.remarks}
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