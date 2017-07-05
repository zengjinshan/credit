<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-高级管理人员管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbManagerPersonList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbManagerPerson" action="${ctx}/ec/ecCBbManagerPerson/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>高管情况ID：</label>
						<div>
							<form:input path="managerPersonId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>证件类型：</label>
						<div>
							<form:select path="certType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>证件号码：</label>
						<div>
							<form:input path="certNum" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>高管人员类别：</label>
						<div>
							<form:select path="managerType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_MANAGER_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>性别：</label>
						<div>
							<form:select path="gender" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_GENDER')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbManagerPerson.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbManagerPerson.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbManagerPersonList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbManagerPerson:add">
		<button class="btn_public" onclick="ecCBbManagerPersonList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:modify">
		<button class="btn_public" onclick="ecCBbManagerPersonList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:remove">
		<button class="btn_public" onclick="ecCBbManagerPersonList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:submit">
		<button class="btn_public" onclick="ecCBbManagerPersonList.submitEcCBbManagerPerson();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:via">
		<button class="btn_public" onclick="ecCBbManagerPersonList.viaEcCBbManagerPerson();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:return">
		<button class="btn_public" onclick="ecCBbManagerPersonList.returnEcCBbManagerPerson();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:export">
		<button class="btn_public" onclick="ecCBbManagerPersonList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbManagerPerson:import">
		<button class="btn_public" onclick="ecCBbManagerPersonList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbManagerPerson/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbManagerPerson/importExcel" method="post" enctype="multipart/form-data"
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
				<th>高管情况ID</th>
				<th>客户编号</th>
				<th>高管人员姓名</th>
				<th>证件类型</th>
				<th>证件号码</th>
				<th>高管人员类别</th>
				<th>性别</th>
				<th>高管人员出生日期</th>
				<th>高管人员最高学历</th>
				<th>高管人员工作简历</th>
				<th>上报标志</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbManagerPerson">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbManagerPerson.managerPersonId}@_#${ecCBbManagerPerson.customerNo}@_#${ecCBbManagerPerson.regDataStatus}@_#${ecCBbManagerPerson.regCheckStatus}@_#${ecCBbManagerPerson.regSendStatus}@_#${ecCBbManagerPerson.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbManagerPersonList.formView('${ecCBbManagerPerson.managerPersonId}','${ecCBbManagerPerson.customerNo}')">
					${fns:getDictLabels(ecCBbManagerPerson.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbManagerPerson.managerPersonId}
				</td>
				<td>
					${ecCBbManagerPerson.customerNo}
				</td>
				<td>
					${ecCBbManagerPerson.managerName}
				</td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.certType, 'EC_CERT_TYPE', '')}
				</td>
				<td>
					${ecCBbManagerPerson.certNum}
				</td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.managerType, 'EC_MANAGER_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.gender, 'EC_GENDER', '')}
				</td>
				<td>
					${ecCBbManagerPerson.managerBirth}
				</td>
				<td>
					${fns:getDictLabels(ecCBbManagerPerson.managerEdu, 'EC_MANAGER_EDU', '')}
				</td>
				<td>
					${ecCBbManagerPerson.managerResume}
				</td>
				<td>
					${ecCBbManagerPerson.reportFlag}
				</td>
				<td>
					${ecCBbManagerPerson.regOrgName}
				</td>
				<td>
					<div title="${ecCBbManagerPerson.remarks}" class="listTitle">
						${ecCBbManagerPerson.remarks}
					</div>
				</td>
				<td>
					${ecCBbManagerPerson.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>