<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>个征数据删除管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcBusiDeleteList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="pcBusiDelete" action="${ctx}/pc/pcBusiDelete/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
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
						<label>金融机构代码：</label>
						<div>
							<form:input path="aaOrgNo" htmlEscape="false" maxlength="14" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${pcBusiDelete.regOrgNo}" labelName="regOrgName" labelValue="${pcBusiDelete.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4">
						<label>业务号：</label>
						<div>
							<form:input path="aaBusiNo" htmlEscape="false" maxlength="40" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="pcBusiDeleteList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="pc:pcBusiDelete:add">
		<button class="btn_public" onclick="pcBusiDeleteList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:modify">
		<button class="btn_public" onclick="pcBusiDeleteList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:remove">
		<button class="btn_public" onclick="pcBusiDeleteList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:submit">
		<button class="btn_public" onclick="pcBusiDeleteList.submitPcBusiDelete();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:via">
		<button class="btn_public" onclick="pcBusiDeleteList.viaPcBusiDelete();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:return">
		<button class="btn_public" onclick="pcBusiDeleteList.returnPcBusiDelete();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:export">
		<button class="btn_public" onclick="pcBusiDeleteList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="pc:pcBusiDelete:import">
		<button class="btn_public" onclick="pcBusiDeleteList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/pc/pcBusiDelete/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/pc/pcBusiDelete/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission>
	<!-- 生成报文 -->
	<shiro:hasPermission name="pc:pcBusiDelete:gen">
		<button class="btn_public" onclick="pcBusiDeleteList.gen();"><i class="icon button_add"></i>生成报文</button>
	</shiro:hasPermission>
	<!-- 导入反馈 -->
	<shiro:hasPermission name="pc:pcBusiDelete:feedback">
		<button class="btn_public" onclick="pcBusiDeleteList.importFeedback();"><i class="icon button_import"></i>导入反馈</button>
		<div id="pcBusiDeleteImportBox" class="hide">
			<form id="pcBusiDeleteImportForm" action="${ctx}/pc/pcBusiDelete/importFeedback" method="post" enctype="multipart/form-data"
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
<!-- 				<th>校验状态</th> -->
				<th>报送状态</th>
				<th>金融机构代码</th>
				<th>业务所属机构</th>
				<th>业务号</th>
				<th>修改者</th>
				<th>修改时间</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="pcBusiDelete">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${pcBusiDelete.aaOrgNo}@_#${pcBusiDelete.aaBusiNo}@_#${pcBusiDelete.regDataStatus}@_#${pcBusiDelete.regCheckStatus}@_#${pcBusiDelete.regSendStatus}@_#${pcBusiDelete.regOperateStatus}"></td>
				<td><a href="#" onclick="pcBusiDeleteList.formView('${pcBusiDelete.aaOrgNo}','${pcBusiDelete.aaBusiNo}')">
					${fns:getDictLabels(pcBusiDelete.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<%-- <td>
					${fns:getDictLabels(pcBusiDelete.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td> --%>
				<td>
					${fns:getDictLabels(pcBusiDelete.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${pcBusiDelete.aaOrgNo}
				</td>
				<td>
					${pcBusiDelete.regOrgName}
				</td>
				<td>
					${pcBusiDelete.aaBusiNo}
				</td>
				<td>
					${pcBusiDelete.updateBy.name}
				</td>
				<td>
					<fmt:formatDate value="${pcBusiDelete.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>