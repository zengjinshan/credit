<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>红名单录入表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqTRlistForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqTRlist" action="${ctx}/fxqbl/fxqTRlist/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqTRlist.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">更新日期：</label>
					<div class="controls-view">
							${fxqTRlist.updateDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqTRlist.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqTRlist.remarks}
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