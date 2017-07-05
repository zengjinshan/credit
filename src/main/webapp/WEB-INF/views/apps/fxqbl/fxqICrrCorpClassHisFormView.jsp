<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对公客户等级分类历史接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrCorpClassHisForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqICrrCorpClassHis" action="${ctx}/fxqbl/fxqICrrCorpClassHis/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">开始时间：</label>
					<div class="controls-view">
							${fxqICrrCorpClassHis.startDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结束时间：</label>
					<div class="controls-view">
							${fxqICrrCorpClassHis.endDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">牵头分类机构代码：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.classOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">审核状态：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.auditStatus}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">审核时间：</label>
					<div class="controls-view">
							${fxqICrrCorpClassHis.auditDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">是否新客户：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrCorpClassHis.isNewCust, 'FXQ_IS_NEW_CUST', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">分类结果：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrCorpClassHis.classResult, 'FXQ_CLASS_RESULT', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">牵头分类机构名称：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.classOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">分类来源：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrCorpClassHis.classSource, 'FXQ_CLASS_SOURCE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分值汇总：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.score}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">决定性因素编号：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.cruRiskNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">原加工日期：</label>
					<div class="controls-view">
							${fxqICrrCorpClassHis.lastDealDt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqICrrCorpClassHis.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqICrrCorpClassHis.remarks}
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