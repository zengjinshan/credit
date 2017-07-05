<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-诉讼信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbSueInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbSueInfo" action="${ctx}/ec/ecCBbSueInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">关注信息ID：</label>
					<div class="controls-view">
						${ecCBbSueInfo.attentionId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">被起诉记录流水号：</label>
					<div class="controls-view">
						${ecCBbSueInfo.sueRecordBlotterNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">起诉人名称：</label>
					<div class="controls-view">
						${ecCBbSueInfo.sueName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
						${ecCBbSueInfo.currency}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">判决执行金额：</label>
					<div class="controls-view">
						${ecCBbSueInfo.judgeExecuteAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">判决执行日期：</label>
					<div class="controls-view">
						${ecCBbSueInfo.judgeExecuteDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">执行结果：</label>
					<div class="controls-view">
						${ecCBbSueInfo.executeReslut}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">被起诉原因：</label>
					<div class="controls-view">
						${ecCBbSueInfo.sueReason}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBbSueInfo.multiTenancyId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${ecCBbSueInfo.customerNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBbSueInfo.remarks}
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