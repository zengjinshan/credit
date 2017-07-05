<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtCustomerForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIBtCustomer" action="${ctx}/fxq/fxqIBtCustomer/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqIBtCustomer.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqIBtCustomer.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${fxqIBtCustomer.custName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件类型代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtCustomer.certType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls-view">
						${fxqIBtCustomer.certNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">国籍代码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIBtCustomer.natising2, 'FXQ_NATISING2', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqIBtCustomer.checkInfo, 'FXQ_CHECK_INFO', '')}
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