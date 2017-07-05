<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>数据关联流程表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regTableProcessList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regTableProcess" action="${ctx}/base/regTableProcess/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>业务表名：</label>
						<div>
							<form:input path="tableName" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>流程组名称：</label>
						<div>
							<form:select path="groupCode" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getRegProcessList()}" itemLabel="groupName" itemValue="groupCode" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="regTableProcessList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regTableProcess:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regTableProcessList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regTableProcessList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regTableProcessList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>业务表名</th>
				<th>流程组名称</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regTableProcess">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regTableProcess.id}"></td>
				<td><a href="${ctx}/base/regTableProcess/form?id=${regTableProcess.id}">
					${regTableProcess.tableName}
				</a></td>
				<td>
					${regTableProcess.groupName}
				</td>
				<td>
					<fmt:formatDate value="${regTableProcess.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regTableProcess.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>