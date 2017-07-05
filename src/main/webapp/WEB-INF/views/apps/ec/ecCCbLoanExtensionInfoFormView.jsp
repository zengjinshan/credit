<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-贷款展期信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbLoanExtensionInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbLoanExtensionInfo" action="${ctx}/ec/ecCCbLoanExtensionInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls-view">
							${ecCCbLoanExtensionInfo.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">借据编号：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.duebillNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">展期次数：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.extensionTimes}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">展期金额：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.extensionAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">展期起始日期：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.extensionStartDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">展期到期日期：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.extensionEndDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.multiTenancyId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录类型：</label>
					<div class="controls-view">
						${ecCCbLoanExtensionInfo.recordTraceCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbLoanExtensionInfo.remarks}
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