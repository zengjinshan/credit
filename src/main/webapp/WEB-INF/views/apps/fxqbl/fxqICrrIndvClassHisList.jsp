<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>对私客户等级分类历史接口管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxqbl/fxqICrrIndvClassHisList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqICrrIndvClassHis" action="${ctx}/fxqbl/fxqICrrIndvClassHis/list" method="post" class="search-form">
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
						<label>开始时间：</label>
						<div>
							<input name="startDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqICrrIndvClassHis.startDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>审核状态：</label>
						<div>
							<form:input path="auditStatus" htmlEscape="false" maxlength="1" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>牵头分类机构名称：</label>
						<div>
							<form:input path="classOrgName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>分类结果：</label>
						<div>
							<form:select path="classResult" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_CLASS_RESULT')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
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
					<button class="btn_public" type="button" onclick="fxqICrrIndvClassHisList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:add">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:modify">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:remove">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:submit">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.submitFxqICrrIndvClassHis();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:via">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.viaFxqICrrIndvClassHis();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:return">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.returnFxqICrrIndvClassHis();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:export">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxqbl:fxqICrrIndvClassHis:import">
		<button class="btn_public" onclick="fxqICrrIndvClassHisList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxqbl/fxqICrrIndvClassHis/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxqbl/fxqICrrIndvClassHis/importExcel" method="post" enctype="multipart/form-data"
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
				<th>开始时间</th>
				<th>结束时间</th>
				<th>审核状态</th>
				<th>牵头分类机构代码</th>
				<th>牵头分类机构名称</th>
				<th>分类来源</th>
				<th>决定性因素编号</th>
				<th>分值汇总</th>
				<th>原加工日期</th>
				<th>审核时间</th>
				<th>是否新客户</th>
				<th>分类结果</th>
				<th>业务所属机构</th>
				<th>数据状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqICrrIndvClassHis">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqICrrIndvClassHis.custNo}@_#${fxqICrrIndvClassHis.startDate}@_#${fxqICrrIndvClassHis.regDataStatus}@_#${fxqICrrIndvClassHis.regCheckStatus}@_#${fxqICrrIndvClassHis.regSendStatus}@_#${fxqICrrIndvClassHis.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqICrrIndvClassHisList.formView('${fxqICrrIndvClassHis.custNo}','${fxqICrrIndvClassHis.startDate}')">
					${fxqICrrIndvClassHis.custNo}
				</a></td>
				<td>
					${fxqICrrIndvClassHis.startDate}
				</td>
				<td>
					${fxqICrrIndvClassHis.endDate}
				</td>
				<td>
					${fxqICrrIndvClassHis.auditStatus}
				</td>
				<td>
					${fxqICrrIndvClassHis.classOrgCd}
				</td>
				<td>
					${fxqICrrIndvClassHis.classOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassHis.classSource, 'FXQ_CLASS_SOURCE', '')}
				</td>
				<td>
					${fxqICrrIndvClassHis.cruRiskNo}
				</td>
				<td>
					${fxqICrrIndvClassHis.score}
				</td>
				<td>
					${fxqICrrIndvClassHis.lastDealDt}
				</td>
				<td>
					${fxqICrrIndvClassHis.auditDate}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassHis.isNewCust, 'FXQ_IS_NEW_CUST', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassHis.classResult, 'FXQ_CLASS_RESULT', '')}
				</td>
				<td>
					${fxqICrrIndvClassHis.regOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqICrrIndvClassHis.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>