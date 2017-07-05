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
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${fxqICrrIndvClassPreRslt.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls">
						<form:input path="custName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">牵头分类机构代码：</label>
					<div class="controls">
						<form:input path="classOrgCd" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">牵头分类机构名称：</label>
					<div class="controls">
						<form:input path="classOrgName" htmlEscape="false" maxlength="100" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">预分类等级：</label>
					<div class="controls">
						<form:input path="classResult" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上期分类等级：</label>
					<div class="controls">
						<form:input path="prevClassResult" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">是否新客户：</label>
					<div class="controls">
						<form:input path="isNewCust" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">名单类型：</label>
					<div class="controls">
						<form:input path="listType" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">是否具有决定性因素：</label>
					<div class="controls">
						<form:input path="isCrucial" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分数：</label>
					<div class="controls">
						<form:input path="score" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">决定性因素编号：</label>
					<div class="controls">
						<form:input path="cruRiskNo" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分类来源：</label>
					<div class="controls">
						<form:input path="classSource" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">可疑交易报送标志：</label>
					<div class="controls">
						<form:input path="doubtReportInd" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">建立业务关系时间：</label>
					<div class="controls">
						<form:input path="setupBizRelaTm" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">结束业务关系时间：</label>
					<div class="controls">
						<form:input path="endBizRelaTm" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告份数：</label>
					<div class="controls">
						<form:input path="hhReportCnt" htmlEscape="false" maxlength="18" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">可疑报告份数：</label>
					<div class="controls">
						<form:input path="ssReportCnt" htmlEscape="false" maxlength="18" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告金额：</label>
					<div class="controls">
						<form:input path="hhReportAmt" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">可疑报告金额：</label>
					<div class="controls">
						<form:input path="ssReportAmt" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额报告统计开始日期：</label>
					<div class="controls">
						<form:input path="hhReportStartDate" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">大额报告统计结束日期：</label>
					<div class="controls">
						<form:input path="hhReportEndDate" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">可疑报告统计开始日期：</label>
					<div class="controls">
						<form:input path="ssReportStartDate" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">可疑报告统计结束日期：</label>
					<div class="controls">
						<form:input path="ssReportEndDate" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls">
						<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:modify"><button class="btn_public" type="button" onclick="fxqICrrIndvClassPreRsltForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>