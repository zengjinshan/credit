<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-财务报表基本信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbFinanceReportBaseForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<ul id="ecCBbFinanceReportBase" class="nav nav-tabs">
		<li class="active"><a href="#financeReportBase">财务报表基本信息</a></li>
		<li><a href="#unitIncomeExpenses">事业单位收入支出信息</a></li>
		<li><a href="#unitLiabilityInfo">事业单位资产负债信息</a></li>
		<li><a href="#liabilityInfo2007">2007版资产负债信息</a></li>
		<li><a href="#profitAssign2007">2007版利润及利润分配信息</a></li>
		<li><a href="#cashFluxInfo2007">2007版现金流量信息</a></li>
	</ul>
	<br/>
	<div class="tab-content">
		<!-- 财务报表基本信息 -->
		<div id="financeReportBase" class="tab-pane active">
			<form:form id="inputForm" modelAttribute="ecCBbFinanceReportBase" action="${ctx}/ec/ecCBbFinanceReportBase/update" method="post" class="form-horizontal">
				<sys:message content="${message}"/>		
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">财务基本信息ID：</label>
							<div class="controls">
								<form:input path="reportBaseId" htmlEscape="false" maxlength="13" class="input-large required digits" disabled="true"/>
								<span class="help-inline"><font color="red">*</font></span>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">源系统客户财务信息ID：</label>
							<div class="controls">
								<form:input path="financialStatementId" htmlEscape="false" maxlength="13" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">业务发生日期：</label>
							<div class="controls">
								<form:input path="occurDate" htmlEscape="false" maxlength="8" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">金融机构代码：</label>
							<div class="controls">
								<form:input path="financeCd" htmlEscape="false" maxlength="11" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人名称：</label>
							<div class="controls">
								<form:input path="borrowerName" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">贷款卡编码：</label>
							<div class="controls">
								<form:input path="loanCardCd" htmlEscape="false" maxlength="16" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">报表年份：</label>
							<div class="controls">
								<form:input path="reportDate" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">报表类型：</label>
							<div class="controls">
								<form:input path="reportType" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">报表类型细分：</label>
							<div class="controls">
								<form:input path="reportTypeDetail" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">审计事务所名称：</label>
							<div class="controls">
								<form:input path="auditOfficeName" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">审计人员名称：</label>
							<div class="controls">
								<form:input path="auditPersonName" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">审计时间：</label>
							<div class="controls">
								<form:input path="auditTime" htmlEscape="false" maxlength="8" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">信息记录类型：</label>
							<div class="controls">
								<form:input path="recordTraceCd" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">信息记录操作类型：</label>
							<div class="controls">
								<form:input path="recordOpType" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">错误代码：</label>
							<div class="controls">
								<form:input path="errorCd" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">变更标示段值：</label>
							<div class="controls">
								<form:input path="changeValue" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">建行机构代码：</label>
							<div class="controls">
								<form:input path="sourceOrgCd" htmlEscape="false" maxlength="9" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">上报标志：</label>
							<div class="controls">
								<form:input path="reportFlag" htmlEscape="false" maxlength="1" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">报文上报机构代码：</label>
							<div class="controls">
								<form:input path="reportOrgCd" htmlEscape="false" maxlength="9" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">客户编号：</label>
							<div class="controls">
								<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">入库状态：</label>
							<div class="controls">
								<form:input path="stockState" htmlEscape="false" maxlength="1" class="input-large "/>
							</div>
					 	</div>
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
					<shiro:hasPermission name="ec:ecCBbFinanceReportBase:modify"><button class="btn_public" type="button" onclick="ecCBbFinanceReportBaseForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
					<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
				</div>
			</form:form>
		</div>
		
		<!-- 事业单位收入支出信息 -->
		<div id="unitIncomeExpenses" class="tab-pane">
			<iframe id="ecCBbUnitIncomeExpenses" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
	
		<!-- 事业单位资产负债信息 -->
		<div id="unitLiabilityInfo" class="tab-pane">
			<iframe id="ecCBbUnitLiabilityInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
	
		<!-- 2007版资产负债信息 -->
		<div id="liabilityInfo2007" class="tab-pane">
			<iframe id="ecCBb2007LiabilityInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
	
		<!-- 2007版利润及利润分配信息 -->
		<div id="profitAssign2007" class="tab-pane">
			<iframe id="ecCBb2007ProfitAssign" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
	
		<!-- 2007版现金流量信息 -->
		<div id="cashFluxInfo2007" class="tab-pane">
			<iframe id="ecCBb2007CashFluxInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
	</div>
</body>
</html>