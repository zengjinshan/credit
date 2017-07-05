<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-高级管理人员管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbManagerPersonForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbManagerPerson" action="${ctx}/ec/ecCBbManagerPerson/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">高管情况ID：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.managerPersonId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.customerNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">高管人员姓名：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.managerName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbManagerPerson.certType, 'EC_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.certNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">高管人员类别：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbManagerPerson.managerType, 'EC_MANAGER_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">性别：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbManagerPerson.gender, 'EC_GENDER', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">高管人员出生日期：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.managerBirth}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">高管人员最高学历：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCBbManagerPerson.managerEdu, 'EC_MANAGER_EDU', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">高管人员工作简历：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.managerResume}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.reportFlag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBbManagerPerson.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBbManagerPerson.remarks}
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