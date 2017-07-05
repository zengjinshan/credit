<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>监管代码映射表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regDictCodeList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regDictCode" action="${ctx}/base/regDictCode/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>实际值：</label>
						<div>
							<form:input path="codeValue" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>展示值：</label>
						<div>
							<form:input path="codeLabel" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>代码组：</label>
						<div>
							<form:input path="codeGroup" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>顺序：</label>
						<div>
							<form:input path="sort" htmlEscape="false" maxlength="10" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regDictCode:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regDictCodeList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regDictCodeList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regDictCodeList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>实际值</th>
				<th>展示值</th>
				<th>代码组</th>
				<th>顺序</th>
				<th>所属系统</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regDictCode">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regDictCode.id}"></td>
				<td><a href="${ctx}/base/regDictCode/form?id=${regDictCode.id}">
					${regDictCode.codeValue}
				</a></td>
				<td>
					${regDictCode.codeLabel}
				</td>
				<td>
					${regDictCode.codeGroup}
				</td>
				<td>
					${regDictCode.sort}
				</td>
				<td>
					${regDictCode.belongSys}
				</td>
				<td>
					<fmt:formatDate value="${regDictCode.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regDictCode.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>