<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-股票信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbStockInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbStockInfo" action="${ctx}/ec/ecCBbStockInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>股票ID：</label>
						<div>
							<form:input path="stockId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>股票代码：</label>
						<div>
							<form:input path="stockCd" htmlEscape="false" maxlength="10" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbStockInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbStockInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbStockInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbStockInfo:add">
		<button class="btn_public" onclick="ecCBbStockInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:modify">
		<button class="btn_public" onclick="ecCBbStockInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:remove">
		<button class="btn_public" onclick="ecCBbStockInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:submit">
		<button class="btn_public" onclick="ecCBbStockInfoList.submitEcCBbStockInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:via">
		<button class="btn_public" onclick="ecCBbStockInfoList.viaEcCBbStockInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:return">
		<button class="btn_public" onclick="ecCBbStockInfoList.returnEcCBbStockInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:export">
		<button class="btn_public" onclick="ecCBbStockInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbStockInfo:import">
		<button class="btn_public" onclick="ecCBbStockInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbStockInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbStockInfo/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission>
	</div>
	<!-- 列表展示 -->
	<table id="stockInfoContentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
				<th>股票ID</th>
				<th>客户编号</th>
				<th>股票代码</th>
				<th>上市地</th>
				<th>上报标志</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbStockInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbStockInfo.stockId}@_#${ecCBbStockInfo.customerNo}@_#${ecCBbStockInfo.regDataStatus}@_#${ecCBbStockInfo.regCheckStatus}@_#${ecCBbStockInfo.regSendStatus}@_#${ecCBbStockInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbStockInfoList.formView('${ecCBbStockInfo.stockId}','${ecCBbStockInfo.customerNo}')">
					${fns:getDictLabels(ecCBbStockInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbStockInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbStockInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbStockInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbStockInfo.stockId}
				</td>
				<td>
					${ecCBbStockInfo.customerNo}
				</td>
				<td>
					${ecCBbStockInfo.stockCd}
				</td>
				<td>
					${fns:getDictLabels(ecCBbStockInfo.stockAddr, 'EC_STOCK_ADDR', '')}
				</td>
				<td>
					${ecCBbStockInfo.reportFlag}
				</td>
				<td>
					${ecCBbStockInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCBbStockInfo.remarks}" class="listTitle">
						${ecCBbStockInfo.remarks}
					</div>
				</td>
				<td>
					${ecCBbStockInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>