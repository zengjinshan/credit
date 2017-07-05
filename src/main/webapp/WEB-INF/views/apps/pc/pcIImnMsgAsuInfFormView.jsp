<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>担保人信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcIImnMsgAsuInfForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="pcIImnMsgAsuInf" action="${ctx}/pc/pcIImnMsgAsuInf/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号：</label>
					<div class="controls-view">
						${pcIImnMsgAsuInf.aaBusiNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保人姓名：</label>
					<div class="controls-view">
						${pcIImnMsgAsuInf.eeAssuName}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">担保人证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgAsuInf.eeAssuCertTp, 'PC_AA_CERT_TP', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保人证件号码：</label>
					<div class="controls-view">
						${pcIImnMsgAsuInf.eeAssuCertNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">担保人担保金额：</label>
					<div class="controls-view">
						${pcIImnMsgAsuInf.eeAssuAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保人担保状态：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgAsuInf.eeAsuManState, 'PC_EE_ASU_MAN_STATE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgAsuInf.aaProd, 'PC_AA_PROD', '')}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${pcIImnMsgAsuInf.remarks}
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