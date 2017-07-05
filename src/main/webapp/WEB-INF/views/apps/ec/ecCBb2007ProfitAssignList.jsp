<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-2007版利润及利润分配信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBb2007ProfitAssignList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBb2007ProfitAssign" action="${ctx}/ec/ecCBb2007ProfitAssign/list" method="post" class="search-form">
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
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBb2007ProfitAssign.regOrgNo}" labelName="regOrgName" labelValue="${ecCBb2007ProfitAssign.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBb2007ProfitAssignList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:add">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:modify">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:remove">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:submit">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.submitEcCBb2007ProfitAssign();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:via">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.viaEcCBb2007ProfitAssign();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:return">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.returnEcCBb2007ProfitAssign();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:export">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007ProfitAssign:import">
		<button class="btn_public" onclick="ecCBb2007ProfitAssignList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBb2007ProfitAssign/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBb2007ProfitAssign/importExcel" method="post" enctype="multipart/form-data"
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
				<th>营业收入</th>
				<th>营业成本</th>
				<th>营业税金及附加</th>
				<th>销售费用</th>
				<th>管理费用</th>
				<th>财务费用</th>
				<th>资产减值损失</th>
				<th>公允价值变动净收益</th>
				<th>投资净收益</th>
				<th>对联营企业和合营企业的投资收益</th>
				<th>营业利润</th>
				<th>营业外收入</th>
				<th>营业外支出</th>
				<th>非流动资产损失</th>
				<th>利润总额</th>
				<th>所得税费用</th>
				<th>净利润</th>
				<th>基本每股收益</th>
				<th>稀释每股收益</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBb2007ProfitAssign">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBb2007ProfitAssign.reportBaseId}@_#${ecCBb2007ProfitAssign.regDataStatus}@_#${ecCBb2007ProfitAssign.regCheckStatus}@_#${ecCBb2007ProfitAssign.regSendStatus}@_#${ecCBb2007ProfitAssign.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBb2007ProfitAssignList.formView('${ecCBb2007ProfitAssign.reportBaseId}')">
					${fns:getDictLabels(ecCBb2007ProfitAssign.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBb2007ProfitAssign.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBb2007ProfitAssign.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBb2007ProfitAssign.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBb2007ProfitAssign.reportBaseId}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9170}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9171}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9172}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9173}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9174}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9175}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9176}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9177}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9178}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9179}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9180}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9181}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9182}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9183}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9184}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9185}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9186}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9187}
				</td>
				<td>
					${ecCBb2007ProfitAssign.item9188}
				</td>
				<td>
					${ecCBb2007ProfitAssign.regOrgName}
				</td>
				<td>
					<div title="${ecCBb2007ProfitAssign.remarks}" class="listTitle">
						${ecCBb2007ProfitAssign.remarks}
					</div>
				</td>
				<td>
					${ecCBb2007ProfitAssign.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>