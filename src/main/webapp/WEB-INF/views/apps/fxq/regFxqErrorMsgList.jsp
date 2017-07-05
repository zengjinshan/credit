<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>反洗钱反馈错误表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/regFxqErrorMsgList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regFxqErrorMsg" action="${ctx}/fxq/regFxqErrorMsg/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
					<div>
					<div class="span4">
						<label>反馈压缩包：</label>
						<div>
							<form:input path="zipFile" htmlEscape="false" maxlength="200" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>反馈回执文件：</label>
						<div>
							<form:input path="fileName" htmlEscape="false" maxlength="200" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>反馈文件类型：</label>
						<div>
							<form:input path="fileType" htmlEscape="false" maxlength="20" class="input-medium"/>
						</div>
					</div>
				</div>
					<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>大额交易特征代码：</label>
						<div>
							<form:input path="hhTxFeaCd" htmlEscape="false" maxlength="200" class="input-medium"/>
						</div>
					</div>
				</div>
					<div>
					<div class="span4">
						<label>可疑客户账号：</label>
						<div>
							<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务标识号：</label>
						<div>
							<form:input path="bizIdNum" htmlEscape="false" maxlength="64" class="input-medium"/>
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
	<shiro:hasPermission name="fxq:regFxqErrorMsg:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regFxqErrorMsgList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regFxqErrorMsgList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regFxqErrorMsgList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>反馈压缩包</th>
				<th>反馈回执文件</th>
				<th>反馈文件类型</th>
				<th>数据日期</th>
				<th>客户编号</th>
				<th>大额交易特征代码</th>
				<th>可疑客户账号</th>
				<th>业务标识号</th>
				<th>反馈定位字段描述</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regFxqErrorMsg">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regFxqErrorMsg.id}"></td>
				<td><a href="${ctx}/fxq/regFxqErrorMsg/form?id=${regFxqErrorMsg.id}">
					${regFxqErrorMsg.zipFile}
				</a></td>
				<td>
					${regFxqErrorMsg.fileName}
				</td>
				<td>
					${regFxqErrorMsg.fileType}
				</td>
				<td>
					${regFxqErrorMsg.dataDt}
				</td>
				<td>
					${regFxqErrorMsg.custNo}
				</td>
				<td>
					${regFxqErrorMsg.hhTxFeaCd}
				</td>
				<td>
					${regFxqErrorMsg.custAcctNum}
				</td>
				<td>
					${regFxqErrorMsg.bizIdNum}
				</td>
				<td>
					${regFxqErrorMsg.locateFileName}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>