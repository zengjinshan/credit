<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>角色管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/modules/js/sys/roleList.js" type="text/javascript"></script>
</head>
<body>
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
		<shiro:hasPermission name="sys:role:edit">
			<button class="btn_public" onclick="roleList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="roleList.remove();"><i class="icon button_delete"></i>删除</button>
		</shiro:hasPermission>
		<shiro:hasPermission name="sys:role:assign">
			<button class="btn_public" onclick="roleList.assign();"><i class="icon button_set"></i>分配</button>
		</shiro:hasPermission>
	</div>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>
					<input type="checkbox">
				</th>
				<th>角色名称</th>
				<th>英文名称</th>
				<!-- <th>归属机构</th>
				<th>数据范围</th> -->
			<shiro:hasPermission name="sys:role:edit">
				<th>操作</th>
			</shiro:hasPermission>
			</tr>
		</thead>
		<c:forEach items="${list}" var="role">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${role.id }"></td>
				<td><a href="${ctx}/sys/role/form?id=${role.id}">${role.name}</a></td>
				<td><a href="${ctx}/sys/role/form?id=${role.id}">${role.enname}</a></td>
				<%-- <td>${role.office.name}</td>
				<td>${fns:getDictLabel(role.dataScope, 'sys_data_scope', '无')}</td> --%>
			<shiro:hasPermission name="sys:role:edit">
				<td>
				<c:if test="${(role.sysData eq fns:getDictValue('是', 'yes_no', '1') && fns:getUser().admin)||!(role.sysData eq fns:getDictValue('是', 'yes_no', '1'))}">
					<a href="${ctx}/sys/role/form?id=${role.id}">修改</a>
				</c:if>
				</td>
			</shiro:hasPermission>	
			</tr>
		</c:forEach>
	</table>
</body>
</html>