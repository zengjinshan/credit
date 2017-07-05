<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-保证合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbAssureInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbAssureInfo" action="${ctx}/ec/ecCCbAssureInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">从合同编号：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.subcontractNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">主合同编号：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.mainContractNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">保证人名称：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.guarPersonName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.loanCardCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">保证币种：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.currency}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">保证金额：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.securityMoney}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">合同签订日期：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.contractGivenDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">保证担保形式：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.guarForm}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">合同有效状态：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.contractValidState}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件类型代码：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.certificateTypeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.certificateNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">企业与自然人标识：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.flag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbAssureInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbAssureInfo.remarks}
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