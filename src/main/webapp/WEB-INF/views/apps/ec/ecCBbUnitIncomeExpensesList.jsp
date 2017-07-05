<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-事业单位收入支出信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbUnitIncomeExpensesList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbUnitIncomeExpenses" action="${ctx}/ec/ecCBbUnitIncomeExpenses/list" method="post" class="search-form">
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
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbUnitIncomeExpenses.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbUnitIncomeExpenses.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbUnitIncomeExpensesList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:add">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:modify">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:remove">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:submit">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.submitEcCBbUnitIncomeExpenses();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:via">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.viaEcCBbUnitIncomeExpenses();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:return">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.returnEcCBbUnitIncomeExpenses();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:export">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:import">
		<button class="btn_public" onclick="ecCBbUnitIncomeExpensesList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbUnitIncomeExpenses/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbUnitIncomeExpenses/importExcel" method="post" enctype="multipart/form-data"
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
				<th>财政补助收入</th>
				<th>上级补助收入</th>
				<th>附属单位缴款</th>
				<th>事业收入</th>
				<th>预算外资金收入</th>
				<th>其他收入</th>
				<th>事业收入小计</th>
				<th>经营收入</th>
				<th>经营收入小计</th>
				<th>拨入专款</th>
				<th>拨入专款小计</th>
				<th>收入总计</th>
				<th>拨出经费</th>
				<th>上缴上级支出</th>
				<th>对附属单位补助</th>
				<th>事业支出</th>
				<th>财政补助支出</th>
				<th>预算外资金支出</th>
				<th>销售税金</th>
				<th>结转自筹基建</th>
				<th>事业支出小计</th>
				<th>经营支出</th>
				<th>销售税金2</th>
				<th>经营支出小计</th>
				<th>拨出专款</th>
				<th>专款支出</th>
				<th>专款小计</th>
				<th>支出总计</th>
				<th>事业结余</th>
				<th>正常收入结余</th>
				<th>收回以前年度事业支出</th>
				<th>经营结余</th>
				<th>以前年度经营亏损</th>
				<th>结余分配</th>
				<th>应交所得税</th>
				<th>提取专用基金</th>
				<th>转入事业基金</th>
				<th>其他结余分配</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbUnitIncomeExpenses">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbUnitIncomeExpenses.reportBaseId}@_#${ecCBbUnitIncomeExpenses.regDataStatus}@_#${ecCBbUnitIncomeExpenses.regCheckStatus}@_#${ecCBbUnitIncomeExpenses.regSendStatus}@_#${ecCBbUnitIncomeExpenses.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbUnitIncomeExpensesList.formView('${ecCBbUnitIncomeExpenses.reportBaseId}')">
					${fns:getDictLabels(ecCBbUnitIncomeExpenses.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbUnitIncomeExpenses.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbUnitIncomeExpenses.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbUnitIncomeExpenses.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.reportBaseId}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9330}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9331}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9332}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9333}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9334}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9335}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9336}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9337}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9338}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9339}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9340}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9341}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9342}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9343}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9344}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9345}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9346}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9347}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9348}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9349}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9350}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9351}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9352}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9353}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9354}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9355}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9356}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9357}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9358}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9359}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9360}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9361}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9362}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9363}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9364}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9365}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9366}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.item9367}
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.regOrgName}
				</td>
				<td>
					<div title="${ecCBbUnitIncomeExpenses.remarks}" class="listTitle">
						${ecCBbUnitIncomeExpenses.remarks}
					</div>
				</td>
				<td>
					${ecCBbUnitIncomeExpenses.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>