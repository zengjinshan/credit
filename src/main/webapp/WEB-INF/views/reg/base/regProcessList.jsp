<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>流程表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regProcessList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regProcess" action="${ctx}/base/regProcess/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>流程组编码：</label>
						<div>
							<form:input path="groupCode" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					
					<div class="span4">
						<label>数据状态：</label>
						<div>
							<form:select path="regDataStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_DATA_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>校验状态：</label>
						<div>
							<form:select path="regCheckStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_CHECK_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					</div>
					<div>
					
					<div class="span4">
						<label>流程组名称：</label>
						<div>
							<form:input path="groupName" htmlEscape="false" maxlength="50" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>报送状态：</label>
						<div>
							<form:select path="regSendStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_SEND_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>操作状态：</label>
						<div>
							<form:select path="regOperateStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_OPERATE_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					</div>
					<div>
					<div class="span4"></div>	
					<div class="span4"></div>
					<div class="span4">
						<label>操作类型：</label>
						<div>
							<form:select path="operateType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('OPERATE_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="regProcessList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regProcess:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regProcessList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regProcessList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regProcessList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>流程组编码</th>
				<th>流程组名称</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
				<th>操作类型</th>
				<th>下一个数据状态</th>
				<th>下一个校验状态</th>
				<th>下一个报送状态</th>
				<th>下一个操作状态</th>
				<th>修改者</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regProcess">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regProcess.id}"></td>
				<td><a href="${ctx}/base/regProcess/form?id=${regProcess.id}">
					${regProcess.groupCode}
				</a>
				</td>
				<td>
					${regProcess.groupName}
				</td>
				<td>
					${fns:getDictLabel(regProcess.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.operateType, 'OPERATE_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.nextRegDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.nextRegCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.nextRegSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(regProcess.nextRegOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${regProcess.updateBy.id}
				</td>
				<td>
					<fmt:formatDate value="${regProcess.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regProcess.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>