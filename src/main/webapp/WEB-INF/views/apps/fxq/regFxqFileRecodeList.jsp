<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>反洗钱文件名路径登记表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/regFxqFileRecodeList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regFxqFileRecode" action="${ctx}/fxq/regFxqFileRecode/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
					<div>
					<div class="span4">
						<label>报文文件名：</label>
						<div>
							<form:input path="fileName" htmlEscape="false" maxlength="200" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>创建者：</label>
						<div>
							<form:input path="createBy.name" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span4"></div>
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
	<shiro:hasPermission name="fxq:regFxqFileRecode:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regFxqFileRecodeList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regFxqFileRecodeList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regFxqFileRecodeList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>报文文件名</th>
				<th>文件完整名称</th>
				<th>创建者</th>
				<th>创建时间</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regFxqFileRecode">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regFxqFileRecode.id}"></td>
				<td><a href="${ctx}/fxq/regFxqFileRecode/form?id=${regFxqFileRecode.id}">
					${regFxqFileRecode.fileName}
				</a></td>
				<td>
					${regFxqFileRecode.fileFullPath}
				</td>
				<td>
					${regFxqFileRecode.createBy.name}
				</td>
				<td>
					<fmt:formatDate value="${regFxqFileRecode.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>