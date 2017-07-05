<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>操作企业征信报文校验错误信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCHandleErrorInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCHandleErrorInfo" action="${ctx}/ec/ecCHandleErrorInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
					<div>
					<div class="span4">
						<label>文件路径：</label>
						<div>
							<form:input path="filePath" htmlEscape="false" maxlength="255" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>文件名：</label>
						<div>
							<form:input path="fileName" htmlEscape="false" maxlength="255" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>主表名：</label>
						<div>
							<form:input path="mainTableName" htmlEscape="false" maxlength="255" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCHandleErrorInfoList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="ec:ecCHandleErrorInfo:edit">
		<div class="button_table">
			<button class="btn_public" onclick="ecCHandleErrorInfoList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="ecCHandleErrorInfoList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="ecCHandleErrorInfoList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>文件路径</th>
				<th>文件名</th>
				<th>行号</th>
				<th>主表名</th>
				<th>错误提示</th>
				<th>报送日期</th>
				<th>错误信息</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCHandleErrorInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCHandleErrorInfo.id}"></td>
				<td><a href="${ctx}/ec/ecCHandleErrorInfo/form?id=${ecCHandleErrorInfo.id}">
					${ecCHandleErrorInfo.filePath}
				</a></td>
				<td>
					${ecCHandleErrorInfo.fileName}
				</td>
				<td>
					${ecCHandleErrorInfo.lineNum}
				</td>
				<td>
					${ecCHandleErrorInfo.mainTableName}
				</td>
				<td>
					${ecCHandleErrorInfo.errHint}
				</td>
				<td>
					<fmt:formatDate value="${ecCHandleErrorInfo.sendData}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${ecCHandleErrorInfo.errMsg}
				</td>
				<td>
					${ecCHandleErrorInfo.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>