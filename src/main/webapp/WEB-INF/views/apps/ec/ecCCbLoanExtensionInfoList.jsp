<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-贷款展期信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbLoanExtensionInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbLoanExtensionInfo" action="${ctx}/ec/ecCCbLoanExtensionInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbLoanExtensionInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>借据编号：</label>
						<div>
							<form:input path="duebillNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>展期次数：</label>
						<div>
							<form:input path="extensionTimes" htmlEscape="false" maxlength="8" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbLoanExtensionInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbLoanExtensionInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbLoanExtensionInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:add">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:modify">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:remove">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:submit">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.submitEcCCbLoanExtensionInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:via">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.viaEcCCbLoanExtensionInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:return">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.returnEcCCbLoanExtensionInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:export">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanExtensionInfo:import">
		<button class="btn_public" onclick="ecCCbLoanExtensionInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbLoanExtensionInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbLoanExtensionInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>业务发生日期</th>
				<th>借据编号</th>
				<th>展期次数</th>
				<th>展期金额</th>
				<th>展期起始日期</th>
				<th>展期到期日期</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbLoanExtensionInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbLoanExtensionInfo.occurDate}@_#${ecCCbLoanExtensionInfo.duebillNo}@_#${ecCCbLoanExtensionInfo.extensionTimes}@_#${ecCCbLoanExtensionInfo.regDataStatus}@_#${ecCCbLoanExtensionInfo.regCheckStatus}@_#${ecCCbLoanExtensionInfo.regSendStatus}@_#${ecCCbLoanExtensionInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbLoanExtensionInfoList.formView('${ecCCbLoanExtensionInfo.occurDate}','${ecCCbLoanExtensionInfo.duebillNo}','${ecCCbLoanExtensionInfo.extensionTimes}')">
					${fns:getDictLabels(ecCCbLoanExtensionInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbLoanExtensionInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanExtensionInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanExtensionInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.occurDate}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.duebillNo}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.extensionTimes}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.extensionAmt}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.extensionStartDate}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.extensionEndDate}
				</td>
				<td>
					${ecCCbLoanExtensionInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbLoanExtensionInfo.remarks}" class="listTitle">
						${ecCCbLoanExtensionInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbLoanExtensionInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>