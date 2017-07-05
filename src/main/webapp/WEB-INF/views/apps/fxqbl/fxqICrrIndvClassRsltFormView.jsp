<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对私客户等级分类结果接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrIndvClassRsltForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqICrrIndvClassRslt" action="${ctx}/fxqbl/fxqICrrIndvClassRslt/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">分类结果类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.classResultType, 'FXQ_CLASS_RESULT_TYPE', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqICrrIndvClassRslt.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.custName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">牵头分类机构代码：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.classOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">牵头分类机构名称：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.classOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预分类等级：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.classResult, 'FXQ_CLASS_RESULT', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上期分类等级：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.prevClassResult, 'FXQ_CLASS_RESULT', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">是否新客户：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.isNewCust, 'FXQ_IS_NEW_CUST', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">名单类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.listType, 'FXQ_LIST_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">是否具有决定性因素：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.isCrucial, 'FXQ_IS_CRUCIAL', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">分数：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.score}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">决定性因素编号：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.cruRiskNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">分类来源：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.classSource, 'FXQ_CLASS_SOURCE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑交易报送标志：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqICrrIndvClassRslt.doubtReportInd, 'FXQ_DOUBT_REPORT_IND', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">建立业务关系时间：</label>
					<div class="controls-view">
							${fxqICrrIndvClassRslt.setupBizRelaTm}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结束业务关系时间：</label>
					<div class="controls-view">
							${fxqICrrIndvClassRslt.endBizRelaTm}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">大额报告份数：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.hhReportCnt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑报告份数：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.ssReportCnt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">大额报告金额：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.hhReportAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑报告金额：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.ssReportAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">大额报告统计开始日期：</label>
					<div class="controls-view">
							${fxqICrrIndvClassRslt.hhReportStartDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告统计结束日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.hhReportEndDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑报告统计开始日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.ssReportStartDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑报告统计结束日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.ssReportEndDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqICrrIndvClassRslt.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqICrrIndvClassRslt.remarks}
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