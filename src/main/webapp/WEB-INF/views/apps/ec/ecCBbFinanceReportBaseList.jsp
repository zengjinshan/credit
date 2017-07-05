<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-财务报表基本信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbFinanceReportBaseList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbFinanceReportBase" action="${ctx}/ec/ecCBbFinanceReportBase/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>财务基本信息ID：</label>
						<div>
							<form:input path="reportBaseId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>源系统客户财务信息ID：</label>
						<div>
							<form:input path="financialStatementId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>借款人名称：</label>
						<div>
							<form:input path="borrowerName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbFinanceReportBase.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbFinanceReportBase.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbFinanceReportBaseList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 新增按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:add">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:modify">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:remove">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:submit">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.submitEcCBbFinanceReportBase();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:via">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.viaEcCBbFinanceReportBase();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:return">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.returnEcCBbFinanceReportBase();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:export">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbFinanceReportBase:import">
		<button class="btn_public" onclick="ecCBbFinanceReportBaseList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbFinanceReportBase/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbFinanceReportBase/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission>
	</div>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
				<th>财务基本信息ID</th>
				<th>源系统客户财务信息ID</th>
				<th>业务发生日期</th>
				<th>金融机构代码</th>
				<th>借款人名称</th>
				<th>贷款卡编码</th>
				<th>报表年份</th>
				<th>报表类型</th>
				<th>报表类型细分</th>
				<th>审计事务所名称</th>
				<th>审计人员名称</th>
				<th>审计时间</th>
				<th>信息记录类型</th>
				<th>信息记录操作类型</th>
				<th>错误代码</th>
				<th>变更标示段值</th>
				<th>建行机构代码</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>客户编号</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbFinanceReportBase">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbFinanceReportBase.reportBaseId}@_#${ecCBbFinanceReportBase.regDataStatus}@_#${ecCBbFinanceReportBase.regCheckStatus}@_#${ecCBbFinanceReportBase.regSendStatus}@_#${ecCBbFinanceReportBase.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbFinanceReportBaseList.formView('${ecCBbFinanceReportBase.reportBaseId}')">
					${fns:getDictLabels(ecCBbFinanceReportBase.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbFinanceReportBase.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbFinanceReportBase.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbFinanceReportBase.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbFinanceReportBase.reportBaseId}
				</td>
				<td>
					${ecCBbFinanceReportBase.financialStatementId}
				</td>
				<td>
					${ecCBbFinanceReportBase.occurDate}
				</td>
				<td>
					${ecCBbFinanceReportBase.financeCd}
				</td>
				<td>
					${ecCBbFinanceReportBase.borrowerName}
				</td>
				<td>
					${ecCBbFinanceReportBase.loanCardCd}
				</td>
				<td>
					${ecCBbFinanceReportBase.reportDate}
				</td>
				<td>
					${ecCBbFinanceReportBase.reportType}
				</td>
				<td>
					${ecCBbFinanceReportBase.reportTypeDetail}
				</td>
				<td>
					${ecCBbFinanceReportBase.auditOfficeName}
				</td>
				<td>
					${ecCBbFinanceReportBase.auditPersonName}
				</td>
				<td>
					${ecCBbFinanceReportBase.auditTime}
				</td>
				<td>
					${ecCBbFinanceReportBase.recordTraceCd}
				</td>
				<td>
					${ecCBbFinanceReportBase.recordOpType}
				</td>
				<td>
					${ecCBbFinanceReportBase.errorCd}
				</td>
				<td>
					${ecCBbFinanceReportBase.changeValue}
				</td>
				<td>
					${ecCBbFinanceReportBase.sourceOrgCd}
				</td>
				<td>
					${ecCBbFinanceReportBase.reportFlag}
				</td>
				<td>
					${ecCBbFinanceReportBase.reportOrgCd}
				</td>
				<td>
					${ecCBbFinanceReportBase.customerNo}
				</td>
				<td>
					${ecCBbFinanceReportBase.stockState}
				</td>
				<td>
					${ecCBbFinanceReportBase.regOrgName}
				</td>
				<td>
					<div title="${ecCBbFinanceReportBase.remarks}" class="listTitle">
						${ecCBbFinanceReportBase.remarks}
					</div>
				</td>
				<td>
					${ecCBbFinanceReportBase.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>