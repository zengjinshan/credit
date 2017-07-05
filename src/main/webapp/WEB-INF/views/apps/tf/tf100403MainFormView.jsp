<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常开卡管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100403MainForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tf100403Main" action="${ctx}/tf/tf100403Main/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
						${tf100403Main.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tf100403Main.idType, 'Tf_Id_Type', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号：</label>
					<div class="controls-view">
						${tf100403Main.idNumber}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">传输报文流水号：</label>
					<div class="controls-view">
						${tf100403Main.transSerialNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务申请编号：</label>
					<div class="controls-view">
						${tf100403Main.applicationId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事件特征码：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tf100403Main.featureCode, 'Tf_feature_Code', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报银行机构编码：</label>
					<div class="controls-view">
						${tf100403Main.bankId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">姓名：</label>
					<div class="controls-view">
						${tf100403Main.idName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经办人姓名：</label>
					<div class="controls-view">
						${tf100403Main.operatorName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经办人电话：</label>
					<div class="controls-view">
						${tf100403Main.operatorPhoneNumber}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
						${tf100403Main.checkInfo}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tf100403Main.remarks}
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