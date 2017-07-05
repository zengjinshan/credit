<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/modules/js/sys/userList.js" type="text/javascript"></script>
</head>
<body>
	<%-- <div id="importBox" class="hide">
		<form id="importForm" action="${ctx}/sys/user/import" method="post" enctype="multipart/form-data"
			class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
			<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
			<input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
			<a href="${ctx}/sys/user/import/template">下载模板</a>
		</form>
	</div> --%>
	
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="user" action="${ctx}/sys/user/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
				<!-- 第一行 -->
				<div>
					<div class="span3">
						<label>归属机构：</label>
						<div>
							<sys:treeselect id="company" name="company.id" value="${user.company.id}" labelName="company.name" labelValue="${user.company.name}" 
								title="公司" url="/sys/office/treeData?type=1" cssClass="input-small" allowClear="true"/>
						</div>
					</div>
				<%-- 	<div class="span3">
						<label>归属部门：</label>
						<div>
							<sys:treeselect id="office" name="office.id" value="${user.office.id}" labelName="office.name" labelValue="${user.office.name}" 
								title="部门" url="/sys/office/treeData?type=2" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
						</div>
					</div> --%>
					<div class="span3">
						<label>登录名：</label>
						<div>
							<form:input path="loginName" htmlEscape="false" maxlength="50" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>姓&nbsp;&nbsp;&nbsp;名：</label>
						<div>
							<form:input path="name" htmlEscape="false" maxlength="50" class="input-medium"/>
						</div>
					</div>
				</div>
				<!-- 按钮 -->
				<div class="">
					<button class="btn_public" type="button" onclick="userList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="sys:user:edit">
		<div class="button_table">
			<button class="btn_public" onclick="userList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="userList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="userList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>归属机构</th>
				<!-- <th>归属部门</th> -->
				<th class="sort-column login_name">登录名</th>
				<th class="sort-column name">姓名</th>
				<th>电话</th><th>手机</th><%--<th>角色</th> --%>
				<%-- <shiro:hasPermission name="sys:user:edit"><th>操作</th></shiro:hasPermission> --%>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="user">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${user.id }"></td>
				<td>${user.company.name}</td>
				<%-- <td>${user.office.name}</td> --%>
				<td><a href="${ctx}/sys/user/form?id=${user.id}">${user.loginName}</a></td>
				<td>${user.name}</td>
				<td>${user.phone}</td>
				<td>${user.mobile}</td><%--
				<td>${user.roleNames}</td> --%>
				<%-- <shiro:hasPermission name="sys:user:edit"><td>
    				<a href="${ctx}/sys/user/form?id=${user.id}">修改</a>
					<a href="${ctx}/sys/user/delete?id=${user.id}" onclick="return confirmx('确认要删除该用户吗？', this.href)">删除</a>
				</td></shiro:hasPermission> --%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>