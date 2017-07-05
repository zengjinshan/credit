<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>担保人信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/test/testPcInfForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="testPcInf" action="${ctx}/test/testPcInf/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号：</label>
					<div class="controls-view">
						${testPcInf.aaBusiNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保人姓名：</label>
					<div class="controls-view">
						${testPcInf.eeAssuName}
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
						${testPcInf.eeAssuCertTp}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保人证件号码：</label>
					<div class="controls-view">
						${testPcInf.eeAssuCertNo}
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
						${testPcInf.eeAssuAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保人担保状态：</label>
					<div class="controls-view">
						${testPcInf.eeAsuManState}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls-view">
						${testPcInf.aaProd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${testPcInf.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${testPcInf.remarks}
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