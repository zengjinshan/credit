<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>业务表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/modules/js/gen/genTableList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="genTable" action="${ctx}/gen/genTable/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
				<div>
					<div class="span3">
						<label>表名：</label>
						<div><form:input path="nameLike" htmlEscape="false" maxlength="50" class="input-medium"/></div>
					</div>
					<div class="span3">
						<label>说明：</label>
						<div><form:input path="comments" htmlEscape="false" maxlength="50" class="input-medium"/></div>
					</div>
					<div class="span3">
						<label>父表表名：</label>
						<div><form:input path="parentTable" htmlEscape="false" maxlength="50" class="input-medium"/></div>
					</div>
					<div class="span3">
						<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
						<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="gen:genTable:edit">
		<div class="button_table">
			<button class="btn_public" onclick="genTableList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="genTableList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="genTableList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th class="sort-column name">表名</th><th>说明</th>
				<th class="sort-column class_name">类名</th>
				<th class="sort-column parent_table">父表</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="genTable">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${genTable.id }"></td>
				<td><a href="${ctx}/gen/genTable/form?id=${genTable.id}">${genTable.name}</a></td>
				<td>${genTable.comments}</td>
				<td>${genTable.className}</td>
				<td title="点击查询子表"><a href="javascript:" onclick="$('#parentTable').val('${genTable.parentTable}');$('#searchForm').submit();">${genTable.parentTable}</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
