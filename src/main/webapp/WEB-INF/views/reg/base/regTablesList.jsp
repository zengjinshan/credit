<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报送表配置管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regTablesList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regTables" action="${ctx}/base/regTables/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>所属系统：</label>
						<div>
							<form:select path="belongSys" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_SYS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span3">
						<label>表英文名称：</label>
						<div>
							<form:input path="tableName" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>表中文名称：</label>
						<div>
							<form:input path="tableComment" htmlEscape="false" maxlength="500" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>主表表名：</label>
						<div>
							<form:input path="parentTable" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="regTablesList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regTables:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regTablesList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regTablesList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regTablesList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>所属系统</th>
				<th>表英文名称</th>
				<th>表中文名称</th>
				<th>序号</th>
				<th>报文标签</th>
				<th>报文数据标签</th>
				<th>主表表名</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>修改者</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regTables">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regTables.id}"></td>
				<td><a href="${ctx}/base/regTables/form?id=${regTables.id}">
					${fns:getDictLabel(regTables.belongSys, 'REG_SYS', '')}
				</a></td>
				<td>
					${regTables.tableName}
				</td>
				<td>
					${regTables.tableComment}
				</td>
				<td>
					${regTables.tableNo}
				</td>
				<td>
					${regTables.tableNodeName}
				</td>
				<td>
					${regTables.tableNodeDataName}
				</td>
				<td>
					${regTables.parentTable}
				</td>
				<td>
					${regTables.createBy.id}
				</td>
				<td>
					<fmt:formatDate value="${regTables.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regTables.updateBy.id}
				</td>
				<td>
					<fmt:formatDate value="${regTables.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regTables.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>