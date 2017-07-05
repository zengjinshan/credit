<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>报文生成记录表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regMsgRecordList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regMsgRecord" action="${ctx}/base/regMsgRecord/list?belongSys=${regSys}" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>报送日期：</label>
						<div>
							<form:input path="sendDate" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>文件名称：</label>
						<div>
							<form:input path="fileName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>创建者：</label>
						<div>
							<form:input path="createBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${regMsgRecord.regOrgNo}" labelName="regOrgName" labelValue="${regMsgRecord.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="regMsgRecordList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="base:regMsgRecord:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regMsgRecordList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regMsgRecordList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regMsgRecordList.remove();"><i class="icon button_delete"></i>删除</button>
			<button class="btn_public" onclick="regMsgRecordList.download();"><i class="icon button_download"></i>下载</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>所属系统</th>
				<th>采集日期</th>
				<th>文件序号</th>
				<th>文件类型</th>
				<th>文件名称</th>
				<th>文件路径</th>
				<th>生成机构</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regMsgRecord">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regMsgRecord.id}" value="${regMsgRecord.id}"></td>
				<td><a href="${ctx}/base/regMsgRecord/form?id=${regMsgRecord.id}">
					${regMsgRecord.belongSys}
				</a></td>
				<td>
					${regMsgRecord.sendDate}
				</td>
				<td>
					${regMsgRecord.fileNo}
				</td>
				<td>
					${fns:getDictLabel(regMsgRecord.fileType, 'FILE_TYPE', '')}
				</td>
				<td>
					${regMsgRecord.fileName}
				</td>
				<td>
					${regMsgRecord.filePath}
				</td>
				<td>
					${regMsgRecord.regOrgName}
				</td>
				<td>
					${regMsgRecord.createBy.name}
				</td>
				<td>
					<fmt:formatDate value="${regMsgRecord.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regMsgRecord.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<input id="h_regSys" style="display:none" value="${regSys}"></div>
</body>
</html>