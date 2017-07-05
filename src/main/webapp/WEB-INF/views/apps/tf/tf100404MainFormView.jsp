<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>涉案账户管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100404MainForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100404Main" action="${ctx}/tf/tf100404Main/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
						${tf100404Main.dataDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传输报文流水号：</label>
					<div class="controls-view">
						${tf100404Main.transSerialNumber}
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
						${tf100404Main.applicationId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事件特征码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tf100404Main.featureCode, 'Tf_Feature_Code', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报银行机构编码：</label>
					<div class="controls-view">
						${tf100404Main.bankId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">卡号：</label>
					<div class="controls-view">
						${tf100404Main.cardNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户名：</label>
					<div class="controls-view">
						${tf100404Main.accountName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件类型：</label>
					<div class="controls-view">
						${tf100404Main.idType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号：</label>
					<div class="controls-view">
						${tf100404Main.idNumber}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">联系电话：</label>
					<div class="controls-view">
						${tf100404Main.phoneNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">通讯地址：</label>
					<div class="controls-view">
						${tf100404Main.address}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">邮政编码：</label>
					<div class="controls-view">
						${tf100404Main.postCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开卡地点：</label>
					<div class="controls-view">
						${tf100404Main.accountOpenPlace}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上报机构名称：</label>
					<div class="controls-view">
						${tf100404Main.reportOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经办人姓名：</label>
					<div class="controls-view">
						${tf100404Main.operatorName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经办人电话：</label>
					<div class="controls-view">
						${tf100404Main.operatorPhoneNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tf100404Main.remarks}
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