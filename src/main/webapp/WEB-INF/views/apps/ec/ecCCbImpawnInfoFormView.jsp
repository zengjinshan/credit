<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-质押合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbImpawnInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbImpawnInfo" action="${ctx}/ec/ecCCbImpawnInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">质押序号：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.impawnSerialNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">从合同编号：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.subcontractNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">主合同编号：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.mainContractNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">出质人名称：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.bringImpawnPersonName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.loanCardCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">质押币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbImpawnInfo.impawnCurrency, 'EC_CURRENCY', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">质押物价值：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.impawnValue}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">合同签订日期：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.contractGivenDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">质押物种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbImpawnInfo.impawnType, 'EC_IMPAWN_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">质押物币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbImpawnInfo.impawnGoodsCurrency, 'EC_CURRENCY', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">质押金额：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.impawnAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">合同有效状态：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbImpawnInfo.contractValidState, 'EC_CONTRACT_VALID_STATE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">质押编号：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.impawnNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件类型代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbImpawnInfo.certificateTypeCd, 'EC_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.certificateNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">企业与自然人标识：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.flag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbImpawnInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbImpawnInfo.remarks}
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