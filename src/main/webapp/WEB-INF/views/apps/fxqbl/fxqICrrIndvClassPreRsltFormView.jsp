<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对私客户等级分类结果接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrIndvClassPreRsltForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqICrrIndvClassPreRslt" action="${ctx}/fxqbl/fxqICrrIndvClassPreRslt/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqICrrIndvClassPreRslt.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.custName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">牵头分类机构代码：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.classOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">牵头分类机构名称：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.classOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">预分类等级：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.classResult}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上期分类等级：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.prevClassResult}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">是否新客户：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.isNewCust}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">名单类型：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.listType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">是否具有决定性因素：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.isCrucial}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分数：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.score}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">决定性因素编号：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.cruRiskNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分类来源：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.classSource}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑交易报送标志：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.doubtReportInd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">建立业务关系时间：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.setupBizRelaTm}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">结束业务关系时间：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.endBizRelaTm}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告份数：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.hhReportCnt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑报告份数：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.ssReportCnt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告金额：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.hhReportAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑报告金额：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.ssReportAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告统计开始日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.hhReportStartDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">大额报告统计结束日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.hhReportEndDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑报告统计开始日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.ssReportStartDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑报告统计结束日期：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.ssReportEndDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${fxqICrrIndvClassPreRslt.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqICrrIndvClassPreRslt.remarks}
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