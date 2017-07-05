<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报送表结构配置管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regStructList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regStruct" action="${ctx}/base/regStruct/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
					<div>
					<div class="span4">
						<label>所属系统：</label>
						<div>
							<form:input path="belongSys" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>表英文名称：</label>
						<div>
							<form:input path="tableName" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>表中文名称：</label>
						<div>
							<form:input path="tableComment" htmlEscape="false" maxlength="500" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="regStructList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regStruct:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regStructList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regStructList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regStructList.remove();"><i class="icon button_delete"></i>删除</button>
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
				<th>字段英文名</th>
				<th>字段中文名</th>
				<th>长度</th>
				<th>精度</th>
				<th>报文节点名称</th>
				<th>是否脱敏</th>
				<th>是否上报字段</th>
				<th>备注信息</th>
				<th>所属文件英文</th>
				<th>主表序号</th>
				<th>加工规则,如1(前补0),2(后补0),3(前补空格),4(后补空格),5(固定值),6(段标)</th>
				<th>固定值</th>
				<th>关联条件</th>
				<th>从表序号</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regStruct">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regStruct.id}"></td>
				<td><a href="${ctx}/base/regStruct/form?id=${regStruct.id}">
					${regStruct.belongSys}
				</a></td>
				<td>
					${regStruct.tableName}
				</td>
				<td>
					${regStruct.tableComment}
				</td>
				<td>
					${regStruct.fieldNo}
				</td>
				<td>
					${regStruct.fieldName}
				</td>
				<td>
					${regStruct.fieldComments}
				</td>
				<td>
					${regStruct.fieldLength}
				</td>
				<td>
					${regStruct.fieldPrecision}
				</td>
				<td>
					${regStruct.fieldNodeName}
				</td>
				<td>
					${regStruct.isSensitive}
				</td>
				<td>
					${regStruct.isSend}
				</td>
				<td>
					${regStruct.remarks}
				</td>
				<td>
					${regStruct.belongFile}
				</td>
				<td>
					${regStruct.tableNo}
				</td>
				<td>
					${regStruct.processRule}
				</td>
				<td>
					${regStruct.fixValue}
				</td>
				<td>
					${regStruct.whereInfo}
				</td>
				<td>
					${regStruct.subTableNo}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>