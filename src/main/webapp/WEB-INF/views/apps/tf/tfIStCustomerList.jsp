<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfIStCustomerList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tfIStCustomer" action="${ctx}/tf/tfIStCustomer/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${tfIStCustomer.dataDt}"
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
						<label>客户开户机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${tfIStCustomer.regOrgNo}" labelName="regOrgName" labelValue="${tfIStCustomer.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tfIStCustomerList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="tf:tfIStCustomer:edit">
		<button class="btn_public" onclick="tfIStCustomerList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="tfIStCustomerList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="tfIStCustomerList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tfIStCustomer:export">
		<button class="btn_public" onclick="tfIStCustomerList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="tf:tfIStCustomer:import">
		<button class="btn_public" onclick="tfIStCustomerList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/tf/tfIStCustomer/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tfIStCustomer/importExcel" method="post" enctype="multipart/form-data"
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
				<th>业务所属机构</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tfIStCustomer">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tfIStCustomer.dataDt}_${tfIStCustomer.custNo}_${tfIStCustomer.regDataStatus}_${tfIStCustomer.regCheckStatus}_${tfIStCustomer.regSendStatus}_${tfIStCustomer.regOperateStatus}"></td>
				<td><a href="#" onclick="tfIStCustomerList.formView('${tfIStCustomer.dataDt}','${tfIStCustomer.custNo}')">
					${tfIStCustomer.dataDt}
				</a></td>
				<td>
					${tfIStCustomer.custNo}
				</td>
				<td>
					${tfIStCustomer.custName}
				</td>
				<td>
					${tfIStCustomer.regOrgName}
				</td>
				<td>
				  <div title="${fns:getDictLabels(tfIStCustomer.regDataStatus, 'REG_DATA_STATUS', '')}" class="listTitle">
					${fns:getDictLabels(tfIStCustomer.regDataStatus, 'REG_DATA_STATUS', '')}
				  </div>
				</td>
				<td>
				  <div title="${fns:getDictLabels(tfIStCustomer.regCheckStatus, 'REG_CHECK_STATUS', '')}" class="listTitle">
					${fns:getDictLabels(tfIStCustomer.regCheckStatus, 'REG_CHECK_STATUS', '')}
				  </div>
				</td>
				<td>
				  <div title="${fns:getDictLabels(tfIStCustomer.regSendStatus, 'REG_SEND_STATUS', '')}" class="listTitle">
					${fns:getDictLabels(tfIStCustomer.regSendStatus, 'REG_SEND_STATUS', '')}
				  </div>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>