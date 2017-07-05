<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>前台审批信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ppsbl/ppsA01FromExamineInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ppsA01FromExamineInfo" action="${ctx}/ppsbl/ppsA01FromExamineInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期数：</label>
					<div class="controls-view">
						${ppsA01FromExamineInfo.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报表名称：</label>
					<div class="controls-view">
						${ppsA01FromExamineInfo.reportName}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务所属机构：</label>
					<div class="controls-view">
						${ppsA01FromExamineInfo.regOrgName}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">报表描述：</label>
					<div class="controls-view">
						${ppsA01FromExamineInfo.reportDesc}
					</div>
			 	</div>
			 </div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ppsA01FromExamineInfo.multiTenancyId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ppsA01FromExamineInfo.remarks}
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