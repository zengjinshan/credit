<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑账户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStAcctForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIStAcct" action="${ctx}/fxq/fxqIStAcct/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqIStAcct.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqIStAcct.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户账号：</label>
					<div class="controls-view">
						${fxqIStAcct.custAcctNum}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户开户时间：</label>
					<div class="controls-view">
							${fxqIStAcct.openDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStAcct.acctType, 'FXQ_ACCT_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户销户时间：</label>
					<div class="controls-view">
							${fxqIStAcct.closeDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqIStAcct.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqIStAcct.remarks}
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