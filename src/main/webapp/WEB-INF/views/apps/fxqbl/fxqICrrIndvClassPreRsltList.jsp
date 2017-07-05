<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对私客户等级分类结果接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrIndvClassPreRsltList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqICrrIndvClassPreRslt" action="${ctx}/fxqbl/fxqICrrIndvClassPreRslt/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqICrrIndvClassPreRslt.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户名称：</label>
						<div>
							<form:input path="custName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${fxqICrrIndvClassPreRslt.regOrgNo}" labelName="regOrgName" labelValue="${fxqICrrIndvClassPreRslt.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqICrrIndvClassPreRsltList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:add">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:modify">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:remove">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:submit">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.submitFxqICrrIndvClassPreRslt();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:via">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.viaFxqICrrIndvClassPreRslt();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:return">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.returnFxqICrrIndvClassPreRslt();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:export">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassPreRslt:import">
		<button class="btn_public" onclick="fxqICrrIndvClassPreRsltList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxqbl/fxqICrrIndvClassPreRslt/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxqbl/fxqICrrIndvClassPreRslt/importExcel" method="post" enctype="multipart/form-data"
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
				<th>数据日期</th>
				<th>客户编号</th>
				<th>客户名称</th>
				<th>牵头分类机构代码</th>
				<th>牵头分类机构名称</th>
				<th>预分类等级</th>
				<th>上期分类等级</th>
				<th>是否新客户</th>
				<th>名单类型</th>
				<th>是否具有决定性因素</th>
				<th>分数</th>
				<th>决定性因素编号</th>
				<th>分类来源</th>
				<th>可疑交易报送标志</th>
				<th>建立业务关系时间</th>
				<th>结束业务关系时间</th>
				<th>大额报告份数</th>
				<th>可疑报告份数</th>
				<th>大额报告金额</th>
				<th>可疑报告金额</th>
				<th>大额报告统计开始日期</th>
				<th>大额报告统计结束日期</th>
				<th>可疑报告统计开始日期</th>
				<th>可疑报告统计结束日期</th>
				<th>业务所属机构</th>
				<th>数据状态</th>
			<!-- 	<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th> -->
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqICrrIndvClassPreRslt">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqICrrIndvClassPreRslt.dataDt}_${fxqICrrIndvClassPreRslt.custNo}_${fxqICrrIndvClassPreRslt.regDataStatus}_${fxqICrrIndvClassPreRslt.regCheckStatus}_${fxqICrrIndvClassPreRslt.regSendStatus}_${fxqICrrIndvClassPreRslt.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqICrrIndvClassPreRsltList.formView('${fxqICrrIndvClassPreRslt.dataDt}','${fxqICrrIndvClassPreRslt.custNo}')">
					${fxqICrrIndvClassPreRslt.dataDt}
				</a></td>
				<td>
					${fxqICrrIndvClassPreRslt.custNo}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.custName}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.classOrgCd}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.classOrgName}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.classResult}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.prevClassResult}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.isNewCust}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.listType}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.isCrucial}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.score}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.cruRiskNo}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.classSource}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.doubtReportInd}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.setupBizRelaTm}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.endBizRelaTm}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.hhReportCnt}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.ssReportCnt}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.hhReportAmt}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.ssReportAmt}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.hhReportStartDate}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.hhReportEndDate}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.ssReportStartDate}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.ssReportEndDate}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.regOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassPreRslt.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
		<%-- 		<td>
					${fns:getDictLabels(fxqICrrIndvClassPreRslt.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassPreRslt.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassPreRslt.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td> --%>
				<td>
					${fxqICrrIndvClassPreRslt.remarks}
				</td>
				<td>
					${fxqICrrIndvClassPreRslt.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>