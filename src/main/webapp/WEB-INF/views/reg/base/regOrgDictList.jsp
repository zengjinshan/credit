<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>机构对照表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regOrgDictList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regOrgDict" action="${ctx}/base/regOrgDict/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>源系统机构编号：</label>
						<div>
							<form:input path="sourceOrgCode" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>源系统机构名称：</label>
						<div>
							<form:input path="sourceOrgName" htmlEscape="false" maxlength="1000" class="input-medium"/>
						</div>
					</div>
					<div class="span3">
						<label>本系统机构编号：</label>
						<div>
							<sys:treeselect id="regOrgCode" name="regOrgCode" value="${regOrgDict.regOrgCode}" labelName="regOrgName" labelValue="${regOrgDict.regOrgName}"
								title="部门" url="/sys/office/treeData?type=2" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
						</div>
					</div>
					<%-- <div class="span3">
						<label>删除标识：</label>
						<div class="radiobuttons">
							<form:radiobuttons path="delFlag" items="${fns:getDictList('del_flag')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</div>
					</div> --%>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="regOrgDictList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regOrgDict:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regOrgDictList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regOrgDictList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regOrgDictList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>源系统机构编号</th>
				<th>源系统机构名称</th>
				<th>本系统机构</th>
				<th>金融机构代码(个人征信)</th>
				<th>报告机构编码(反洗钱)</th>
				<th>金融机构代码(企业征信)</th>
				<th>上报银行机构编码(电信诈骗)</th>
				<th>修改者</th>
				<th>修改时间</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regOrgDict">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regOrgDict.id}"></td>
				<td><a href="${ctx}/base/regOrgDict/form?id=${regOrgDict.id}">
					${regOrgDict.sourceOrgCode}
				</a></td>
				<td>
					${regOrgDict.sourceOrgName}
				</td>
				<td>
					${regOrgDict.regOrgName}
				</td>
				<td>
					${regOrgDict.deptCode}
				</td>
				<td>
					${regOrgDict.reportOrgCode}
				</td>
				<td>
					${regOrgDict.ecReportCode}
				</td>
				<td>
					${regOrgDict.tfReportCode}
				</td>
				<td>
					${regOrgDict.updateBy.name}
				</td>
				<td>
					<fmt:formatDate value="${regOrgDict.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>