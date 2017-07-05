<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-集团公司管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbGroupCorpList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbGroupCorp" action="${ctx}/ec/ecCBbGroupCorp/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>上级公司名称：</label>
						<div>
							<form:input path="upCorpName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbGroupCorp.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbGroupCorp.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbGroupCorpList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbGroupCorp:add">
		<button class="btn_public" onclick="ecCBbGroupCorpList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:modify">
		<button class="btn_public" onclick="ecCBbGroupCorpList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:remove">
		<button class="btn_public" onclick="ecCBbGroupCorpList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:submit">
		<button class="btn_public" onclick="ecCBbGroupCorpList.submitEcCBbGroupCorp();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:via">
		<button class="btn_public" onclick="ecCBbGroupCorpList.viaEcCBbGroupCorp();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:return">
		<button class="btn_public" onclick="ecCBbGroupCorpList.returnEcCBbGroupCorp();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:export">
		<button class="btn_public" onclick="ecCBbGroupCorpList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGroupCorp:import">
		<button class="btn_public" onclick="ecCBbGroupCorpList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbGroupCorp/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbGroupCorp/importExcel" method="post" enctype="multipart/form-data"
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
				<th>客户编号</th>
				<th>上级公司名称</th>
				<th>贷款卡编码</th>
				<th>组织机构代码</th>
				<th>上报标志</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbGroupCorp">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbGroupCorp.customerNo}@_#${ecCBbGroupCorp.regDataStatus}@_#${ecCBbGroupCorp.regCheckStatus}@_#${ecCBbGroupCorp.regSendStatus}@_#${ecCBbGroupCorp.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbGroupCorpList.formView('${ecCBbGroupCorp.customerNo}')">
					${fns:getDictLabels(ecCBbGroupCorp.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbGroupCorp.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGroupCorp.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGroupCorp.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbGroupCorp.customerNo}
				</td>
				<td>
					${ecCBbGroupCorp.upCorpName}
				</td>
				<td>
					${ecCBbGroupCorp.loanCardCd}
				</td>
				<td>
					${ecCBbGroupCorp.orgCode}
				</td>
				<td>
					${ecCBbGroupCorp.reportFlag}
				</td>
				<td>
					${ecCBbGroupCorp.regOrgName}
				</td>
				<td>
					<div title="${ecCBbGroupCorp.remarks}" class="listTitle">
						${ecCBbGroupCorp.remarks}
					</div>
				</td>
				<td>
					${ecCBbGroupCorp.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>