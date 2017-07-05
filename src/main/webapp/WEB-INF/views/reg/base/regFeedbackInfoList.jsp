<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>监管反馈信息表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/reg/js/base/regFeedbackInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regFeedbackInfo" action="${ctx}/base/regFeedbackInfo?belongSys=${regSys}" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
					<div>
					<div class="span4">
						<label>报文文件名称：</label>
						<div>
							<form:input path="fileName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>反馈文件名称：</label>
						<div>
							<form:input path="feedbackFileName" htmlEscape="false" maxlength="500" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>反馈标识：</label>
						<div>
							<form:select path="feedbackFlag" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FEEDBACK_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
					<div>
					<div class="span4">
						<label>反馈解析标识：</label>
						<div>
							<form:select path="resolveFlag" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('RESOLVE_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4"></div>
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
	<shiro:hasPermission name="base:regFeedbackInfo:edit">
		<div class="button_table">
			<!-- <button class="btn_public" onclick="regFeedbackInfoList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regFeedbackInfoList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regFeedbackInfoList.remove();"><i class="icon button_delete"></i>删除</button> -->
			<button class="btn_public" onclick="regFeedbackInfoList.importFeedback();"><i class="icon button_import"></i>导入反馈</button>
		</div>
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/base/regFeedbackInfo/importFeedback?belongSys=${regSys}" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>
				<!-- <button id="btnImportSubmit" class="btn_public" type="button" onclick="regFeedbackInfoList.import();"><i class="icon button_import"></i>导入</button> -->
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<!-- <th>主键ID</th> -->
				<th>报文文件名称</th>
				<th>反馈文件名称</th>
				<th>文件路径</th>
				<th>反馈标识</th>
				<th>反馈解析标识</th>
				<th>修改者</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regFeedbackInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regFeedbackInfo.id}"></td>
				<%-- <td>
					${regFeedbackInfo.id}
				</td> --%>
				<td><a href="${ctx}/base/regFeedbackInfo/form?id=${regFeedbackInfo.id}">
					${regFeedbackInfo.fileName}
				</a></td>
				<td>
					${regFeedbackInfo.feedbackFileName}
				</td>
				<td>
					${regFeedbackInfo.feedbackFilePath}
				</td>
				<td>
					${fns:getDictLabel(regFeedbackInfo.feedbackFlag, 'FEEDBACK_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabel(regFeedbackInfo.resolveFlag, 'RESOLVE_FLAG', '')}
				</td>
				<td>
					${regFeedbackInfo.updateBy.name}
				</td>
				<td>
					<fmt:formatDate value="${regFeedbackInfo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regFeedbackInfo.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<input id="h_regSys" style="display:none" value="${regSys}"></div>
</body>
</html>