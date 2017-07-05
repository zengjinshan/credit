<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStCustomerList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqIStCustomer" action="${ctx}/fxq/fxqIStCustomer/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqIStCustomer.dataDt}"
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
						<label>所属机构代码名称：</label>
						<div>
							<form:input path="belongedOrgName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>可疑程度：</label>
						<div>
							<form:select path="ssdg" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_SSDG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>采取措施：</label>
						<div>
							<form:input path="tkms" htmlEscape="false" maxlength="300" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>可疑行为描述：</label>
						<div>
							<form:input path="ssds" htmlEscape="false" maxlength="3000" class="input-medium"/>
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
						<label>报送状态：</label>
						<div>
							<form:select path="regSendStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_SEND_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqIStCustomerList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxq:fxqIStCustomer:add">
		<button class="btn_public" onclick="fxqIStCustomerList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:modify">
		<button class="btn_public" onclick="fxqIStCustomerList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:remove">
		<button class="btn_public" onclick="fxqIStCustomerList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:submit">
		<button class="btn_public" onclick="fxqIStCustomerList.submitFxqIStCustomer();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:via">
		<button class="btn_public" onclick="fxqIStCustomerList.viaFxqIStCustomer();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:return">
		<button class="btn_public" onclick="fxqIStCustomerList.returnFxqIStCustomer();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:export">
		<button class="btn_public" onclick="fxqIStCustomerList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStCustomer:import">
		<button class="btn_public" onclick="fxqIStCustomerList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxq/fxqIStCustomer/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqIStCustomer/importExcel" method="post" enctype="multipart/form-data"
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
				<th>所属机构代码名称</th>
				<th>可疑程度</th>
				<th>采取措施</th>
				<th>可疑行为描述</th>
				<th>校验信息</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqIStCustomer">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqIStCustomer.dataDt}@_#${fxqIStCustomer.custNo}@_#${fxqIStCustomer.regDataStatus}@_#${fxqIStCustomer.regCheckStatus}@_#${fxqIStCustomer.regSendStatus}@_#${fxqIStCustomer.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqIStCustomerList.formView('${fxqIStCustomer.dataDt}','${fxqIStCustomer.custNo}')">
					${fxqIStCustomer.dataDt}
				</a></td>
				<td>
					${fxqIStCustomer.custNo}
				</td>
				<td>
					${fxqIStCustomer.belongedOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqIStCustomer.ssdg, 'FXQ_SSDG', '')}
				</td>
				<td>
					${fxqIStCustomer.tkms}
				</td>
				<td>
					${fxqIStCustomer.ssds}
				</td>
				<td>
					<div title="${fns:getDictLabels(fxqIStCustomer.modiInfo, 'FXQ_CHECK_INFO', '')}" class="listTitle">
						${fns:getDictLabels(fxqIStCustomer.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</td>
				<td>
					${fns:getDictLabels(fxqIStCustomer.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIStCustomer.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIStCustomer.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>