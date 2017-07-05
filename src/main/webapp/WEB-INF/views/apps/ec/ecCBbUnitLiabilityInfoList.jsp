<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-事业单位资产负债信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbUnitLiabilityInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbUnitLiabilityInfo" action="${ctx}/ec/ecCBbUnitLiabilityInfo/list" method="post" class="search-form">
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
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbUnitLiabilityInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbUnitLiabilityInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbUnitLiabilityInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:add">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:modify">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:remove">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:submit">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.submitEcCBbUnitLiabilityInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:via">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.viaEcCBbUnitLiabilityInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:return">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.returnEcCBbUnitLiabilityInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:export">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbUnitLiabilityInfo:import">
		<button class="btn_public" onclick="ecCBbUnitLiabilityInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbUnitLiabilityInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbUnitLiabilityInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>现金</th>
				<th>银行存款</th>
				<th>应收票据</th>
				<th>应收账款</th>
				<th>预付账款</th>
				<th>其他应收款</th>
				<th>材料</th>
				<th>产成品</th>
				<th>对外投资</th>
				<th>固定资产</th>
				<th>无形资产</th>
				<th>资产合计</th>
				<th>拨出经费</th>
				<th>拨出专款</th>
				<th>专款支出</th>
				<th>事业支出</th>
				<th>经营支出</th>
				<th>成本费用</th>
				<th>销售税金</th>
				<th>上缴上级支出</th>
				<th>对附属单位补助</th>
				<th>结转自筹基建</th>
				<th>支出合计</th>
				<th>资产部类总计</th>
				<th>借记款项</th>
				<th>应付票据</th>
				<th>应付账款</th>
				<th>预收账款</th>
				<th>其他应付款</th>
				<th>应缴预算款</th>
				<th>应缴财政专户款</th>
				<th>应交税金</th>
				<th>负债合计</th>
				<th>事业基金</th>
				<th>一般基金</th>
				<th>投资基金</th>
				<th>固定基金</th>
				<th>专用基金</th>
				<th>事业结余</th>
				<th>经营结余</th>
				<th>净资产合计</th>
				<th>财政补助收入</th>
				<th>上级补助收入</th>
				<th>拨入专款</th>
				<th>事业收入</th>
				<th>经营收入</th>
				<th>附属单位缴款</th>
				<th>其他收入</th>
				<th>收入合计</th>
				<th>负债部类总计</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbUnitLiabilityInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbUnitLiabilityInfo.reportBaseId}@_#${ecCBbUnitLiabilityInfo.regDataStatus}@_#${ecCBbUnitLiabilityInfo.regCheckStatus}@_#${ecCBbUnitLiabilityInfo.regSendStatus}@_#${ecCBbUnitLiabilityInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbUnitLiabilityInfoList.formView('${ecCBbUnitLiabilityInfo.reportBaseId}')">
					${fns:getDictLabels(ecCBbUnitLiabilityInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbUnitLiabilityInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbUnitLiabilityInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbUnitLiabilityInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.reportBaseId}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9271}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9272}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9273}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9274}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9275}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9276}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9277}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9278}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9279}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9280}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9281}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9282}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9283}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9284}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9285}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9286}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9287}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9288}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9289}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9290}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9291}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9292}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9293}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9294}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9295}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9296}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9297}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9298}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9299}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9300}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9301}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9302}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9303}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9304}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9305}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9306}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9307}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9308}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9309}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9310}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9311}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9312}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9313}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9314}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9315}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9316}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9317}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9318}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9319}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.item9320}
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCBbUnitLiabilityInfo.remarks}" class="listTitle">
						${ecCBbUnitLiabilityInfo.remarks}
					</div>
				</td>
				<td>
					${ecCBbUnitLiabilityInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>