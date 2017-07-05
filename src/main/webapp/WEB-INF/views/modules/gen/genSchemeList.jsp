<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生成方案管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/modules/js/gen/genSchemeList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="genScheme" action="${ctx}/gen/genScheme/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>方案名称：</label>
						<div><form:input path="name" htmlEscape="false" maxlength="50" class="input-medium"/></div>
					</div>
					<div class="span3">
						<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
						<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
					</div>
					<div class="span6">
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="gen:genScheme:edit">
		<div class="button_table">
			<button class="btn_public" onclick="genSchemeList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="genSchemeList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="genSchemeList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>方案名称</th><th>生成模块</th><th>模块名</th><th>功能名</th><th>功能作者</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="genScheme">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${genScheme.id }"></td>
				<td><a href="${ctx}/gen/genScheme/form?id=${genScheme.id}">${genScheme.name}</a></td>
				<td>${genScheme.packageName}</td>
				<td>${genScheme.moduleName}${not empty genScheme.subModuleName?'.':''}${genScheme.subModuleName}</td>
				<td>${genScheme.functionName}</td>
				<td>${genScheme.functionAuthor}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
