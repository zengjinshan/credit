<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常事件管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100405MainForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100405Main" action="${ctx}/tf/tf100405Main/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
						${tf100405Main.dataDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传输报文流水号：</label>
					<div class="controls-view">
						${tf100405Main.transSerialNumber}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务申请编号：</label>
					<div class="controls-view">
						${tf100405Main.applicationId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上报银行机构编码：</label>
					<div class="controls-view">
						${tf100405Main.bankId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经办人姓名：</label>
					<div class="controls-view">
						${tf100405Main.operatorName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经办人电话：</label>
					<div class="controls-view">
						${tf100405Main.operatorPhoneNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">主账户名称：</label>
					<div class="controls-view">
						${tf100405Main.accountName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">主账户：</label>
					<div class="controls-view">
						${tf100405Main.cardNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事件特征码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tf100405Main.featureCode, 'Tf_Feature_Code', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">备注：</label>
					<div class="controls-view">
						${tf100405Main.remark}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tf100405Main.remarks}
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