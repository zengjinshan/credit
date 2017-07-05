<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑账户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfIStAcctList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tfIStAcct" action="${ctx}/tf/tfIStAcct/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${tfIStAcct.dataDt}"
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
						<label>客户账号：</label>
						<div>
							<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>账户名称：</label>
						<div>
							<form:input path="acctName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>					
					<div class="span4">
						<label>账户开户机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${tfIStAcct.regOrgNo}" labelName="regOrgName" labelValue="${tfIStAcct.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4">
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tfIStAcctList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 编辑按钮权限 -->
	<shiro:hasPermission name="tf:tfIStAcct:edit">
		<button class="btn_public" onclick="tfIStAcctList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="tfIStAcctList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="tfIStAcctList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tfIStAcct:export">
		<button class="btn_public" onclick="tfIStAcctList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="tf:tfIStAcct:import">
		<button class="btn_public" onclick="tfIStAcctList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/tf/tfIStAcct/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tfIStAcct/importExcel" method="post" enctype="multipart/form-data"
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
				<th>账户名称</th>
				<th>业务所属机构</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tfIStAcct">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tfIStAcct.dataDt}_${tfIStAcct.custNo}_${tfIStAcct.custAcctNum}_${tfIStAcct.regDataStatus}_${tfIStAcct.regCheckStatus}_${tfIStAcct.regSendStatus}_${tfIStAcct.regOperateStatus}"></td>
				<td><a href="#" onclick="tfIStAcctList.formView('${tfIStAcct.dataDt}','${tfIStAcct.custNo}','${tfIStAcct.custAcctNum}')">
					${tfIStAcct.dataDt}
				</a></td>
				<td>
					${tfIStAcct.custNo}
				</td>
				<td>
					${tfIStAcct.custAcctNum}
				</td>
				<td>
					${tfIStAcct.acctName}
				</td>
				<td>
					${tfIStAcct.regOrgName}
				</td>
				<td>
				  <div title="${fns:getDictLabels(tfIStAcct.regDataStatus, 'REG_DATA_STATUS', '')}" class="listTitle">
					${fns:getDictLabels(tfIStAcct.regDataStatus, 'REG_DATA_STATUS', '')}
				  </div>
				</td>
				<td>
				  <div title="${fns:getDictLabels(tfIStAcct.regCheckStatus, 'REG_CHECK_STATUS', '')}" class="listTitle">
					${fns:getDictLabels(tfIStAcct.regCheckStatus, 'REG_CHECK_STATUS', '')}
				  </div>
				</td>
				<td>
				  <div title="${fns:getDictLabels(tfIStAcct.regSendStatus, 'REG_SEND_STATUS', '')}" class="listTitle">
					${fns:getDictLabels(tfIStAcct.regSendStatus, 'REG_SEND_STATUS', '')}
				  </div>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>