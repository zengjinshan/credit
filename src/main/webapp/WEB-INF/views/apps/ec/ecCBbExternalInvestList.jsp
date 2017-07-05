<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-对外投资资本管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbExternalInvestList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbExternalInvest" action="${ctx}/ec/ecCBbExternalInvest/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>对外投资ID：</label>
						<div>
							<form:input path="externalInvestId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbExternalInvest.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbExternalInvest.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbExternalInvestList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbExternalInvest:add">
		<button class="btn_public" onclick="ecCBbExternalInvestList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:modify">
		<button class="btn_public" onclick="ecCBbExternalInvestList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:remove">
		<button class="btn_public" onclick="ecCBbExternalInvestList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:submit">
		<button class="btn_public" onclick="ecCBbExternalInvestList.submitEcCBbExternalInvest();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:via">
		<button class="btn_public" onclick="ecCBbExternalInvestList.viaEcCBbExternalInvest();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:return">
		<button class="btn_public" onclick="ecCBbExternalInvestList.returnEcCBbExternalInvest();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:export">
		<button class="btn_public" onclick="ecCBbExternalInvestList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbExternalInvest:import">
		<button class="btn_public" onclick="ecCBbExternalInvestList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbExternalInvest/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbExternalInvest/importExcel" method="post" enctype="multipart/form-data"
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
				<th>对外投资ID</th>
				<th>客户编号</th>
				<th>被投资单位名称</th>
				<th>被投资单位贷款卡编码</th>
				<th>被投资单位组织机构代码</th>
				<th>币种1</th>
				<th>投资金额1</th>
				<th>币种2</th>
				<th>投资金额2</th>
				<th>币种3</th>
				<th>投资金额3</th>
				<th>上报标志</th>
				<th>业务所属机构</th>
				<th>创建者</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbExternalInvest">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbExternalInvest.externalInvestId}@_#${ecCBbExternalInvest.customerNo}@_#${ecCBbExternalInvest.regDataStatus}@_#${ecCBbExternalInvest.regCheckStatus}@_#${ecCBbExternalInvest.regSendStatus}@_#${ecCBbExternalInvest.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbExternalInvestList.formView('${ecCBbExternalInvest.externalInvestId}','${ecCBbExternalInvest.customerNo}')">
					${fns:getDictLabels(ecCBbExternalInvest.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbExternalInvest.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbExternalInvest.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbExternalInvest.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbExternalInvest.externalInvestId}
				</td>
				<td>
					${ecCBbExternalInvest.customerNo}
				</td>
				<td>
					${ecCBbExternalInvest.investCorpName}
				</td>
				<td>
					${ecCBbExternalInvest.loanCardCd}
				</td>
				<td>
					${ecCBbExternalInvest.orgCode}
				</td>
				<td>
					${fns:getDictLabels(ecCBbExternalInvest.currency1, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCBbExternalInvest.investAmt1}
				</td>
				<td>
					${fns:getDictLabels(ecCBbExternalInvest.currency2, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCBbExternalInvest.investAmt2}
				</td>
				<td>
					${fns:getDictLabels(ecCBbExternalInvest.currency3, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCBbExternalInvest.investAmt3}
				</td>
				<td>
					${ecCBbExternalInvest.reportFlag}
				</td>
				<td>
					${ecCBbExternalInvest.regOrgName}
				</td>
				<td>
					${ecCBbExternalInvest.createBy.name}
				</td>
				<td>
					<div title="${ecCBbExternalInvest.remarks}" class="listTitle">
						${ecCBbExternalInvest.remarks}
					</div>
				</td>
				<td>
					${ecCBbExternalInvest.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>