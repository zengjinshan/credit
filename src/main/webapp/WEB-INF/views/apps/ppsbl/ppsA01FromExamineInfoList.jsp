<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>前台审批信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ppsbl/ppsA01FromExamineInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ppsA01FromExamineInfo" action="${ctx}/ppsbl/ppsA01FromExamineInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>期数：</label>
						<div>
							<form:input path="dataDt" htmlEscape="false" maxlength="6" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>报表名称：</label>
						<div>
							<form:input path="reportName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>多实体标识：</label>
						<div>
							<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>数据状态：</label>
						<div>
							<form:select path="regDataStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_DATA_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>校验状态：</label>
						<div>
							<form:select path="regCheckStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_CHECK_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ppsA01FromExamineInfo.regOrgNo}" labelName="regOrgName" labelValue="${ppsA01FromExamineInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ppsA01FromExamineInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:add">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:modify">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:remove">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:submit">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.submitPpsA01FromExamineInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:via">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.viaPpsA01FromExamineInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:return">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.returnPpsA01FromExamineInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:export">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ppsbl:ppsA01FromExamineInfo:import">
		<button class="btn_public" onclick="ppsA01FromExamineInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ppsbl/ppsA01FromExamineInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ppsbl/ppsA01FromExamineInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>期数</th>
				<th>报表名称</th>
				<th>多实体标识</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>修改时间</th>
				<th>备注信息</th>
				<th>业务所属机构</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ppsA01FromExamineInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ppsA01FromExamineInfo.dataDt}@_#${ppsA01FromExamineInfo.reportName}@_#${ppsA01FromExamineInfo.multiTenancyId}@_#${ppsA01FromExamineInfo.regOrgNo}@_#${ppsA01FromExamineInfo.regDataStatus}@_#${ppsA01FromExamineInfo.regCheckStatus}@_#${ppsA01FromExamineInfo.regSendStatus}@_#${ppsA01FromExamineInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ppsA01FromExamineInfoList.formView('${ppsA01FromExamineInfo.dataDt}','${ppsA01FromExamineInfo.reportName}','${ppsA01FromExamineInfo.multiTenancyId}','${ppsA01FromExamineInfo.regOrgNo}')">
					${ppsA01FromExamineInfo.dataDt}
				</a></td>
				<td>
					${ppsA01FromExamineInfo.reportName}
				</td>
				<td>
					${ppsA01FromExamineInfo.multiTenancyId}
				</td>
				<td>
					${fns:getDictLabels(ppsA01FromExamineInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ppsA01FromExamineInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					<fmt:formatDate value="${ppsA01FromExamineInfo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${ppsA01FromExamineInfo.remarks}
				</td>
				<td>
					${ppsA01FromExamineInfo.regOrgName}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>