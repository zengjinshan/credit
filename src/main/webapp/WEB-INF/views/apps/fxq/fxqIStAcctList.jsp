<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑账户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStAcctList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqIStAcct" action="${ctx}/fxq/fxqIStAcct/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqIStAcct.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>客户账号：</label>
						<div>
							<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>账户开户时间：</label>
						<div>
							<form:input path="openDt" htmlEscape="false" maxlength="10" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>账户类型：</label>
						<div>
							<form:select path="acctType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_ACCT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>账户销户时间：</label>
						<div>
							<form:input path="closeDt" htmlEscape="false" maxlength="10" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${fxqIStAcct.regOrgNo}" labelName="regOrgName" labelValue="${fxqIStAcct.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
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
				<div>
					<div class="span4">
						<label>操作状态：</label>
						<div>
							<form:select path="regOperateStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_OPERATE_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqIStAcctList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxq:fxqIStAcct:add">
		<button class="btn_public" onclick="fxqIStAcctList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:modify">
		<button class="btn_public" onclick="fxqIStAcctList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:remove">
		<button class="btn_public" onclick="fxqIStAcctList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:submit">
		<button class="btn_public" onclick="fxqIStAcctList.submitFxqIStAcct();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:via">
		<button class="btn_public" onclick="fxqIStAcctList.viaFxqIStAcct();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:return">
		<button class="btn_public" onclick="fxqIStAcctList.returnFxqIStAcct();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:export">
		<button class="btn_public" onclick="fxqIStAcctList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIStAcct:import">
		<button class="btn_public" onclick="fxqIStAcctList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxq/fxqIStAcct/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqIStAcct/importExcel" method="post" enctype="multipart/form-data"
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
				<th>客户账号</th>
				<th>账户开户时间</th>
				<th>账户类型</th>
				<th>账户销户时间</th>
				<th>校验信息</th>
				<th>业务所属机构</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqIStAcct">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqIStAcct.dataDt}@_#${fxqIStAcct.custNo}@_#${fxqIStAcct.custAcctNum}@_#${fxqIStAcct.regDataStatus}@_#${fxqIStAcct.regCheckStatus}@_#${fxqIStAcct.regSendStatus}@_#${fxqIStAcct.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqIStAcctList.formView('${fxqIStAcct.dataDt}','${fxqIStAcct.custNo}','${fxqIStAcct.custAcctNum}')">
					${fxqIStAcct.dataDt}
				</a></td>
				<td>
					${fxqIStAcct.custNo}
				</td>
				<td>
					${fxqIStAcct.custAcctNum}
				</td>
				<td>
					${fxqIStAcct.openDt}
				</td>
				<td>
					${fns:getDictLabels(fxqIStAcct.acctType, 'FXQ_ACCT_TYPE', '')}
				</td>
				<td>
					${fxqIStAcct.closeDt}
				</td>
				<td>
					<div title="${fns:getDictLabels(fxqIStAcct.modiInfo, 'FXQ_CHECK_INFO', '')}" class="listTitle">
						${fns:getDictLabels(fxqIStAcct.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</td>
				<td>
					${fxqIStAcct.regOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqIStAcct.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIStAcct.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIStAcct.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIStAcct.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>