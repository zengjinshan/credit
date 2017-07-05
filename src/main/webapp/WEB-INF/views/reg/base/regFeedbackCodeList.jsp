<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>监管反馈对照表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regFeedbackCodeList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regFeedbackCode" action="${ctx}/base/regFeedbackCode/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>错误码总类：</label>
						<div>
							<form:input path="errorGroup" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>错误的代码：</label>
						<div>
							<form:input path="errorCode" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>校验规则信息：</label>
						<div>
							<form:input path="checkRulesMsg" htmlEscape="false" maxlength="1000" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>所属系统：</label>
						<div>
							<form:input path="belongSys" htmlEscape="false" maxlength="30" class="input-medium"/>
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
	<shiro:hasPermission name="base:regFeedbackCode:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regFeedbackCodeList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regFeedbackCodeList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regFeedbackCodeList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>错误码总类</th>
				<th>错误的代码</th>
				<th>错误代码说明</th>
				<th>校验规则信息</th>
				<th>所属系统</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regFeedbackCode">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regFeedbackCode.id}"></td>
				<td><a href="${ctx}/base/regFeedbackCode/form?id=${regFeedbackCode.id}">
					${regFeedbackCode.errorGroup}
				</a></td>
				<td>
					${regFeedbackCode.errorCode}
				</td>
				<td>
					${regFeedbackCode.errorMsg}
				</td>
				<td>
					${regFeedbackCode.checkRulesMsg}
				</td>
				<td>
					${regFeedbackCode.belongSys}
				</td>
				<td>
					<fmt:formatDate value="${regFeedbackCode.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regFeedbackCode.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>