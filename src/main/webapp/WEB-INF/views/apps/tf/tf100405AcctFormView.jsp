<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常事件子账户管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100405AcctForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100405Acct" action="${ctx}/tf/tf100405Acct/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
						${tf100405Acct.dataDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传输报文流水号：</label>
					<div class="controls-view">
						${tf100405Acct.transSerialNumber}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一般(子)账户序号：</label>
					<div class="controls-view">
						${tf100405Acct.accountSerial}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">定位账户账号：</label>
					<div class="controls-view">
						${tf100405Acct.accountNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一般(子)账户类别：</label>
					<div class="controls-view">
						${tf100405Acct.accountType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户状态：</label>
					<div class="controls-view">
						${tf100405Acct.accountStatus}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
						${tf100405Acct.currency}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">钞汇标志：</label>
					<div class="controls-view">
						${tf100405Acct.cashRemit}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tf100405Acct.remarks}
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