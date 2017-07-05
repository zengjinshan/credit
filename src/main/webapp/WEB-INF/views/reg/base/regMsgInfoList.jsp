<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报文生成信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regMsgInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regMsgInfo" action="${ctx}/base/regMsgInfo?belongSys=${regSys}" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span3">
						<label>报送日期：</label>
						<div>
							<form:input path="sendDate" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<%-- <div class="span3">
						<label>状态：</label>
						<div>
							<form:select path="genStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('GEN_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div> --%>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
					<!-- <button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button> -->
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
<%-- 	<shiro:hasPermission name="base:regMsgInfo:edit">
		<button class="btn_public" onclick="regMsgInfoList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="regMsgInfoList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="regMsgInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission> --%>
	<shiro:hasPermission name="base:regMsgInfo:gen">
		<button class="btn_public" onclick="regMsgInfoList.genMsgInfo();"><i class="icon button_add"></i>生成报文</button>
	</shiro:hasPermission>
	<shiro:hasPermission name="base:regMsgInfo:check">
		<button class="btn_public" onclick="regMsgInfoList.checkMsgInfo();"><i class="icon button_submit"></i>校验数据</button>
	</shiro:hasPermission>
	</div>
	
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>所属系统</th>
				<th>采集日期</th>
				<!-- <th>状态</th>
				<th>生成次数</th> -->
				<th>修改者</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regMsgInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regMsgInfo.id}"></td>
				<td><a href="${ctx}/base/regMsgInfo/form?id=${regMsgInfo.id}">
					${regMsgInfo.belongSys}
				</a></td>
				<td>
					${regMsgInfo.sendDate}
				</td>
				<%-- <td>
					${fns:getDictLabel(regMsgInfo.genStatus, 'GEN_STATUS', '')}
				</td> 
				<td>
					${regMsgInfo.genNum}
				</td>--%>
				<td>
					${regMsgInfo.updateBy.name}
				</td>
				<td>
					<fmt:formatDate value="${regMsgInfo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regMsgInfo.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<input id="h_regSys" style="display:none" value="${regSys}"></div>
</body>
</html>