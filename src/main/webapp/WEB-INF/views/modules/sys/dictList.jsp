<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>字典管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/modules/js/sys/dictList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
		<form:form id="searchForm" modelAttribute="dict" action="${ctx}/sys/dict/" method="post" class="search-form">
			<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
			<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
			<div>
				<div class="span3">
					<label>类&nbsp;&nbsp;&nbsp;型：</label>
					<div>
						<form:select id="type" path="type" class="input-medium">
							<form:option value="" label=""/>
							<form:options items="${typeList}" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
				<div class="span3">
					<label>描&nbsp;&nbsp;&nbsp;述：</label>
					<div>
						<form:input path="description" htmlEscape="false" maxlength="50" class="input-medium"/>
					</div>
				</div>
				<div class="span3">
					<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
				<div class="span3"></div>
			</div>
			<!-- 按钮 -->
			<!-- <div class="button_table_center">
				<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
				<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
			</div> -->
		</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="sys:dict:edit">
		<div class="button_table">
			<button class="btn_public" onclick="dictList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="dictList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="dictList.remove();"><i class="icon button_delete"></i>删除</button>
			<button class="btn_public" onclick="dictList.addValue();"><i class="icon button_add"></i>添加键值</button>
		</div>
	</shiro:hasPermission>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>键值</th>
				<th>标签</th>
				<th>类型</th>
				<th>描述</th>
				<th>排序</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="dict">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${dict.id }"></td>
				<td>${dict.value}</td>
				<td><a href="${ctx}/sys/dict/form?id=${dict.id}">${dict.label}</a></td>
				<td><a href="javascript:" onclick="$('#type').val('${dict.type}');$('#searchForm').submit();return false;">${dict.type}</a></td>
				<td>${dict.description}</td>
				<td>${dict.sort}</td>
				<%-- <shiro:hasPermission name="sys:dict:edit"><td>
    				<a href="<c:url value='${fns:getAdminPath()}/sys/dict/form?type=${dict.type}&sort=${dict.sort+10}'><c:param name='description' value='${dict.description}'/></c:url>">添加键值</a>
				</td></shiro:hasPermission> --%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>