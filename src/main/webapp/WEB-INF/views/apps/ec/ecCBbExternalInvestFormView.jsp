<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-对外投资资本管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbExternalInvestForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbExternalInvest" action="${ctx}/ec/ecCBbExternalInvest/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对外投资ID：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.externalInvestId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.customerNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">被投资单位名称：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.investCorpName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">被投资单位贷款卡编码：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.loanCardCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">被投资单位组织机构代码：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.orgCode}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种1：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbExternalInvest.currency1, 'EC_CURRENCY', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资金额1：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.investAmt1}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种2：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbExternalInvest.currency2, 'EC_CURRENCY', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资金额2：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.investAmt2}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种3：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbExternalInvest.currency3, 'EC_CURRENCY', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资金额3：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.investAmt3}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.reportFlag}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBbExternalInvest.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBbExternalInvest.remarks}
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