<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-集团公司管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbGroupCorpForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbGroupCorp" action="${ctx}/ec/ecCBbGroupCorp/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${ecCBbGroupCorp.customerNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上级公司名称：</label>
					<div class="controls-view">
						${ecCBbGroupCorp.upCorpName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCBbGroupCorp.loanCardCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">组织机构代码：</label>
					<div class="controls-view">
						${ecCBbGroupCorp.orgCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCBbGroupCorp.reportFlag}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBbGroupCorp.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBbGroupCorp.remarks}
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