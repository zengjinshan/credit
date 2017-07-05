<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>个征数据删除管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcBusiDeleteForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="pcBusiDelete" action="${ctx}/pc/pcBusiDelete/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${pcBusiDelete.aaOrgNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务号：</label>
					<div class="controls-view">
						${pcBusiDelete.aaBusiNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">起始结算/应还款日期：</label>
					<div class="controls-view">
						${pcBusiDelete.aaPayDateStart}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">结束结算/应还款日期：</label>
					<div class="controls-view">
						${pcBusiDelete.aaPayDateEnd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${pcBusiDelete.remarks}
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