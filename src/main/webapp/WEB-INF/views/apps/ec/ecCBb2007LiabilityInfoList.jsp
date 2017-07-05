<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-2007版资产负债信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBb2007LiabilityInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBb2007LiabilityInfo" action="${ctx}/ec/ecCBb2007LiabilityInfo/list" method="post" class="search-form">
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
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBb2007LiabilityInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCBb2007LiabilityInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBb2007LiabilityInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:add">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:modify">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:remove">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:submit">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.submitEcCBb2007LiabilityInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:via">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.viaEcCBb2007LiabilityInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:return">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.returnEcCBb2007LiabilityInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:export">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007LiabilityInfo:import">
		<button class="btn_public" onclick="ecCBb2007LiabilityInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBb2007LiabilityInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBb2007LiabilityInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>货币资金</th>
				<th>交易性金融资产</th>
				<th>应收票据</th>
				<th>应收账款</th>
				<th>预付账款</th>
				<th>应收利息</th>
				<th>应收股利</th>
				<th>其他应收款</th>
				<th>存货</th>
				<th>一年内到期的非流动资产</th>
				<th>其他流动资产</th>
				<th>流动资产合计</th>
				<th>可供出售的金融资产</th>
				<th>持有至到期投资</th>
				<th>长期股权投资</th>
				<th>长期应收款</th>
				<th>投资性房地产</th>
				<th>固定资产</th>
				<th>在建工程</th>
				<th>工程物资</th>
				<th>固定资产清理</th>
				<th>生产性生物资产</th>
				<th>油气资产</th>
				<th>无形资产</th>
				<th>开发支出</th>
				<th>商誉</th>
				<th>长期待摊费用</th>
				<th>递延所得税资产</th>
				<th>其他非流动资产</th>
				<th>非流动资产合计</th>
				<th>资产总计</th>
				<th>短期借款</th>
				<th>交易性金融负债</th>
				<th>应付票据</th>
				<th>应付账款</th>
				<th>预收账款</th>
				<th>应付利息</th>
				<th>应付职工薪酬</th>
				<th>应交税费</th>
				<th>应付股利</th>
				<th>其他应付款</th>
				<th>一年内到期的非流动负债</th>
				<th>其他流动负债</th>
				<th>流动负债合计</th>
				<th>长期借款</th>
				<th>应付债券</th>
				<th>长期应付款</th>
				<th>专项应付款</th>
				<th>预计负债</th>
				<th>递延所得税负债</th>
				<th>其他非流动负债</th>
				<th>非流动负债合计</th>
				<th>负债合计</th>
				<th>实收资本（或股本）</th>
				<th>资本公积</th>
				<th>减：库存股</th>
				<th>盈余公积</th>
				<th>未分配利润</th>
				<th>所有者权益合计</th>
				<th>负债和所有者权益合计</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBb2007LiabilityInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBb2007LiabilityInfo.reportBaseId}@_#${ecCBb2007LiabilityInfo.regDataStatus}@_#${ecCBb2007LiabilityInfo.regCheckStatus}@_#${ecCBb2007LiabilityInfo.regSendStatus}@_#${ecCBb2007LiabilityInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBb2007LiabilityInfoList.formView('${ecCBb2007LiabilityInfo.reportBaseId}')">
					${fns:getDictLabels(ecCBb2007LiabilityInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBb2007LiabilityInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBb2007LiabilityInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBb2007LiabilityInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.reportBaseId}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9100}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9101}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9102}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9103}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9104}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9105}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9106}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9107}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9108}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9109}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9110}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9111}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9112}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9113}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9114}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9115}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9116}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9117}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9118}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9119}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9120}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9121}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9122}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9123}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9124}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9125}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9126}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9127}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9128}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9129}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9130}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9131}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9132}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9133}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9134}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9135}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9136}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9137}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9138}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9139}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9140}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9141}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9142}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9143}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9144}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9145}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9146}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9147}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9148}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9149}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9150}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9151}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9152}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9153}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9154}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9155}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9156}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9157}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9158}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.item9159}
				</td>
				<td>
					${ecCBb2007LiabilityInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCBb2007LiabilityInfo.remarks}" class="listTitle">
						${ecCBb2007LiabilityInfo.remarks}
					</div>
				</td>
				<td>
					${ecCBb2007LiabilityInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>