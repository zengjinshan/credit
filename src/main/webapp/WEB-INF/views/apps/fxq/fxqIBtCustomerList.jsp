<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtCustomerList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqIBtCustomer" action="${ctx}/fxq/fxqIBtCustomer/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqIBtCustomer.dataDt}"
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
						<label>证件类型代码：</label>
						<div>
							<form:select path="certType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>校验信息：</label>
						<div>
							<form:select path="checkInfo" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_CHECK_INFO')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
				<div>
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
					<div class="span4">
						<label>操作状态：</label>
						<div>
							<form:select path="regOperateStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_OPERATE_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqIBtCustomerList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxq:fxqIBtCustomer:add">
		<button class="btn_public" onclick="fxqIBtCustomerList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:modify">
		<button class="btn_public" onclick="fxqIBtCustomerList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:remove">
		<button class="btn_public" onclick="fxqIBtCustomerList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:submit">
		<button class="btn_public" onclick="fxqIBtCustomerList.submitFxqIBtCustomer();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:via">
		<button class="btn_public" onclick="fxqIBtCustomerList.viaFxqIBtCustomer();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:return">
		<button class="btn_public" onclick="fxqIBtCustomerList.returnFxqIBtCustomer();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:export">
		<button class="btn_public" onclick="fxqIBtCustomerList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtCustomer:import">
		<button class="btn_public" onclick="fxqIBtCustomerList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxq/fxqIBtCustomer/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqIBtCustomer/importExcel" method="post" enctype="multipart/form-data"
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
				<th>证件类型代码</th>
				<th>证件号码</th>
				<th>国籍代码</th>
				<th>校验信息</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqIBtCustomer">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqIBtCustomer.dataDt}@_#${fxqIBtCustomer.custNo}@_#${fxqIBtCustomer.regDataStatus}@_#${fxqIBtCustomer.regCheckStatus}@_#${fxqIBtCustomer.regSendStatus}@_#${fxqIBtCustomer.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqIBtCustomerList.formView('${fxqIBtCustomer.dataDt}','${fxqIBtCustomer.custNo}')">
					${fxqIBtCustomer.dataDt}
				</a></td>
				<td>
					${fxqIBtCustomer.custNo}
				</td>
				<td>
					${fxqIBtCustomer.custName}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtCustomer.certType, 'FXQ_CERT_TYPE', '')}
				</td>
				<td>
					${fxqIBtCustomer.certNum}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtCustomer.natising2, 'FXQ_NATISING2', '')}
				</td>
				<td>
					<div title="${fns:getDictLabels(fxqIBtCustomer.checkInfo, 'FXQ_CHECK_INFO', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtCustomer.checkInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</td>
				<td>
					${fns:getDictLabels(fxqIBtCustomer.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtCustomer.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtCustomer.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtCustomer.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>