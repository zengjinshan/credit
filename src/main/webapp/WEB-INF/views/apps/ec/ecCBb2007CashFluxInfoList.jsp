<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-2007版现金流量信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBb2007CashFluxInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBb2007CashFluxInfo" action="${ctx}/ec/ecCBb2007CashFluxInfo/list" method="post" class="search-form">
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
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBb2007CashFluxInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCBb2007CashFluxInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBb2007CashFluxInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:add">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:modify">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:remove">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:submit">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.submitEcCBb2007CashFluxInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:via">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.viaEcCBb2007CashFluxInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:return">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.returnEcCBb2007CashFluxInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:export">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:import">
		<button class="btn_public" onclick="ecCBb2007CashFluxInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBb2007CashFluxInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBb2007CashFluxInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>销售商品和提供劳务收到的现金</th>
				<th>收到的税费返还</th>
				<th>收到其他与经营活动有关的现金</th>
				<th>经营活动现金流入小计</th>
				<th>购买商品、接受劳务支付的现金</th>
				<th>支付给职工以及为职工支付的现金</th>
				<th>支付的各项税费</th>
				<th>支付其他与经营活动有关的现金</th>
				<th>经营活动现金流出小计</th>
				<th>经营活动产生的现金流量净额</th>
				<th>收回投资所收到的现金</th>
				<th>取得投资收益所收到的现金</th>
				<th>处置固定资产无形资产和其他长期资产所收回的现金净额</th>
				<th>处置子公司及其他营业单位收到的现金净额</th>
				<th>收到其他与投资活动有关的现金</th>
				<th>投资活动现金流入小计</th>
				<th>购建固定资产无形资产和其他长期资产所支付的现金</th>
				<th>投资所支付的现金</th>
				<th>取得子公司及其他营业单位支付的现金净额</th>
				<th>支付其他与投资活动有关的现金</th>
				<th>投资活动现金流出小计</th>
				<th>投资活动产生的现金流量净额</th>
				<th>吸收投资收到的现金</th>
				<th>取得借款收到的现金</th>
				<th>收到其他与筹资活动有关的现金</th>
				<th>筹资活动现金流入小计</th>
				<th>偿还债务所支付的现金</th>
				<th>分配股利、利润或偿付利息所支付的现金</th>
				<th>支付其他与筹资活动有关的现金</th>
				<th>筹资活动现金流出小计</th>
				<th>筹集活动产生的现金流量净额</th>
				<th>汇率变动对现金及现金等价物的影响</th>
				<th>现金及现金等价物净增加额</th>
				<th>期初现金及现金等价物余额</th>
				<th>期末现金及现金等价物余额</th>
				<th>净利润</th>
				<th>资产减值准备</th>
				<th>固定资产折旧、油气资产折耗、生产性生物资产折旧</th>
				<th>无形资产摊销</th>
				<th>长期待摊费用摊销</th>
				<th>待摊费用减少</th>
				<th>预提费用增加</th>
				<th>处置固定资产无形资产和其他长期资产的损失</th>
				<th>固定资产报废损失</th>
				<th>公允价值变动损失</th>
				<th>财务费用</th>
				<th>投资损失</th>
				<th>递延所得税资产减少</th>
				<th>递延所得税负债增加</th>
				<th>存货的减少</th>
				<th>经营性应收项目的减少</th>
				<th>经营性应付项目的增加</th>
				<th>其他</th>
				<th>经营活动产生的现金流量净额2</th>
				<th>债务转为资本</th>
				<th>一年内到期的可转换公司债券</th>
				<th>融资租入固定资产</th>
				<th>其他2</th>
				<th>现金的期末余额</th>
				<th>现金的期初余额</th>
				<th>现金等价物的期末余额</th>
				<th>现金等价物的期初余额</th>
				<th>现金及现金等价物净增加额2</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBb2007CashFluxInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBb2007CashFluxInfo.reportBaseId}@_#${ecCBb2007CashFluxInfo.regDataStatus}@_#${ecCBb2007CashFluxInfo.regCheckStatus}@_#${ecCBb2007CashFluxInfo.regSendStatus}@_#${ecCBb2007CashFluxInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBb2007CashFluxInfoList.formView('${ecCBb2007CashFluxInfo.reportBaseId}')">
					${fns:getDictLabels(ecCBb2007CashFluxInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBb2007CashFluxInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBb2007CashFluxInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBb2007CashFluxInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.reportBaseId}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9199}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9200}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9201}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9202}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9203}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9204}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9205}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9206}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9207}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9208}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9209}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9210}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9211}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9212}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9213}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9214}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9215}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9216}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9217}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9218}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9219}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9220}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9221}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9222}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9223}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9224}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9225}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9226}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9227}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9228}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9229}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9230}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9231}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9232}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9233}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9234}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9235}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9236}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9237}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9238}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9239}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9240}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9241}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9242}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9243}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9244}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9245}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9246}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9247}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9248}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9249}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9250}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9251}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9252}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9253}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9254}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9255}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9256}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9257}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9258}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9259}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9260}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.item9261}
				</td>
				<td>
					${ecCBb2007CashFluxInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCBb2007CashFluxInfo.remarks}" class="listTitle">
						${ecCBb2007CashFluxInfo.remarks}
					</div>
				</td>
				<td>
					${ecCBb2007CashFluxInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>