<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对私客户等级分类结果接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrIndvClassRsltList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqICrrIndvClassRslt" action="${ctx}/fxqbl/fxqICrrIndvClassRslt/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>分类结果类型：</label>
						<div>
							<form:select path="classResultType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_CLASS_RESULT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqICrrIndvClassRslt.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>客户名称：</label>
						<div>
							<form:input path="custName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${fxqICrrIndvClassRslt.regOrgNo}" labelName="regOrgName" labelValue="${fxqICrrIndvClassRslt.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4">
						<label>数据状态：</label>
						<div>
							<form:select path="regDataStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_DATA_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqICrrIndvClassRsltList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:add">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:modify">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:remove">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:submit">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.submitFxqICrrIndvClassRslt();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:via">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.viaFxqICrrIndvClassRslt();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:return">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.returnFxqICrrIndvClassRslt();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:export">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassRslt:import">
		<button class="btn_public" onclick="fxqICrrIndvClassRsltList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxqbl/fxqICrrIndvClassRslt/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxqbl/fxqICrrIndvClassRslt/importExcel" method="post" enctype="multipart/form-data"
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
				<th>客户编号</th>
				<th>分类结果类型</th>
				<th>数据日期</th>
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
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqICrrIndvClassRslt">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqICrrIndvClassRslt.custNo}@_#${fxqICrrIndvClassRslt.classResultType}@_#${fxqICrrIndvClassRslt.dataDt}@_#${fxqICrrIndvClassRslt.regDataStatus}@_#${fxqICrrIndvClassRslt.regCheckStatus}@_#${fxqICrrIndvClassRslt.regSendStatus}@_#${fxqICrrIndvClassRslt.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqICrrIndvClassRsltList.formView('${fxqICrrIndvClassRslt.custNo}','${fxqICrrIndvClassRslt.classResultType}','${fxqICrrIndvClassRslt.dataDt}')">
					${fxqICrrIndvClassRslt.custNo}
				</a></td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.classResultType, 'FXQ_CLASS_RESULT_TYPE', '')}
				</td>
				<td>
					${fxqICrrIndvClassRslt.dataDt}
				</td>
				<td>
					${fxqICrrIndvClassRslt.custName}
				</td>
				<td>
					${fxqICrrIndvClassRslt.classOrgCd}
				</td>
				<td>
					${fxqICrrIndvClassRslt.classOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.classResult, 'FXQ_CLASS_RESULT', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.prevClassResult, 'FXQ_CLASS_RESULT', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.isNewCust, 'FXQ_IS_NEW_CUST', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.listType, 'FXQ_LIST_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.isCrucial, 'FXQ_IS_CRUCIAL', '')}
				</td>
				<td>
					${fxqICrrIndvClassRslt.score}
				</td>
				<td>
					${fxqICrrIndvClassRslt.cruRiskNo}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.classSource, 'FXQ_CLASS_SOURCE', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.doubtReportInd, 'FXQ_DOUBT_REPORT_IND', '')}
				</td>
				<td>
					${fxqICrrIndvClassRslt.setupBizRelaTm}
				</td>
				<td>
					${fxqICrrIndvClassRslt.endBizRelaTm}
				</td>
				<td>
					${fxqICrrIndvClassRslt.hhReportCnt}
				</td>
				<td>
					${fxqICrrIndvClassRslt.ssReportCnt}
				</td>
				<td>
					${fxqICrrIndvClassRslt.hhReportAmt}
				</td>
				<td>
					${fxqICrrIndvClassRslt.ssReportAmt}
				</td>
				<td>
					${fxqICrrIndvClassRslt.hhReportStartDate}
				</td>
				<td>
					${fxqICrrIndvClassRslt.hhReportEndDate}
				</td>
				<td>
					${fxqICrrIndvClassRslt.ssReportStartDate}
				</td>
				<td>
					${fxqICrrIndvClassRslt.ssReportEndDate}
				</td>
				<td>
					${fxqICrrIndvClassRslt.regOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassRslt.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>