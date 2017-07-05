<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>信息报告临时表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqTInfoRptForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqTInfoRpt" action="${ctx}/fxqbl/fxqTInfoRpt/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqTInfoRpt.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqTInfoRpt.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">风险因素编号：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqTInfoRpt.riskElementNum, 'FXQ_RISK_ELEMENT_NUM', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">有效期开始日期：</label>
					<div class="controls-view">
							${fxqTInfoRpt.beginDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">有效期结束日期：</label>
					<div class="controls-view">
							${fxqTInfoRpt.endDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">人工失效日期：</label>
					<div class="controls-view">
							${fxqTInfoRpt.manualEndDt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息报告生成日期：</label>
					<div class="controls-view">
							${fxqTInfoRpt.infrptGenDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">是否决定性因素：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqTInfoRpt.isKeyFlag, 'FXQ_IS_KEY_FLAG', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqTInfoRpt.corpIndvInd, 'FXQ_CORP_INDV_IND', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqTInfoRpt.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqTInfoRpt.remarks}
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