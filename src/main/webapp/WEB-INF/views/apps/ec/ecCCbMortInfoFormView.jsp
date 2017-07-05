<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-抵押合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbMortInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbMortInfo" action="${ctx}/ec/ecCCbMortInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbMortInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">抵押序号：</label>
					<div class="controls-view">
						${ecCCbMortInfo.mortSerialNo}
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
						${ecCCbMortInfo.subcontractNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">主合同编号：</label>
					<div class="controls-view">
						${ecCCbMortInfo.mainContractNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">抵押人名称：</label>
					<div class="controls-view">
						${ecCCbMortInfo.mortgagerName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbMortInfo.loanCardCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">抵押合同币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbMortInfo.mortContractCurrency, 'EC_CURRENCY', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">抵押物评估价值：</label>
					<div class="controls-view">
						${ecCCbMortInfo.guarantyValuation}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">评估日期：</label>
					<div class="controls-view">
						${ecCCbMortInfo.valuationDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">评估机构名称：</label>
					<div class="controls-view">
						${ecCCbMortInfo.valuationOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">评估机构组织机构代码：</label>
					<div class="controls-view">
						${ecCCbMortInfo.valuationOrgNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">合同签订日期：</label>
					<div class="controls-view">
						${ecCCbMortInfo.contractGivenDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">抵押物种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbMortInfo.guarantyType, 'EC_GUARANTY_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">抵押物币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbMortInfo.guarantyCurrency, 'EC_CURRENCY', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">抵押金额：</label>
					<div class="controls-view">
						${ecCCbMortInfo.guarantyAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">登记机关：</label>
					<div class="controls-view">
						${ecCCbMortInfo.registerDep}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">登记日期：</label>
					<div class="controls-view">
						${ecCCbMortInfo.registerDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">抵押物说明：</label>
					<div class="controls-view">
						${ecCCbMortInfo.guarantyDsc}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">合同有效状态：</label>
					<div class="controls-view">
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">抵押编号：</label>
					<div class="controls-view">
						${ecCCbMortInfo.mortNo}
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
					    ${fns:getDictLabels(ecCCbMortInfo.certificateTypeCd, 'EC_CERT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls-view">
						${ecCCbMortInfo.certificateNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">企业与自然人标识：</label>
					<div class="controls-view">
						${ecCCbMortInfo.flag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbMortInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbMortInfo.remarks}
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