<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额关系接口表成功管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtRelationList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqIBtRelation" action="${ctx}/fxq/fxqIBtRelation/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-medium"/>
						</div>
					</div>
				
					<div class="span4">
						<label>报告ID：</label>
						<div>
							<form:input path="reportId" htmlEscape="false" maxlength="19" class="input-medium"/>
						</div>
					</div>
				
					<div class="span4">
						<label>交易ID：</label>
						<div>
							<form:input path="txId" htmlEscape="false" maxlength="50" class="input-medium"/>
						</div>
					</div>
				</div>
				
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqIBtRelationList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 编辑按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtRelation:edit">
		<button class="btn_public" onclick="fxqIBtRelationList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="fxqIBtRelationList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="fxqIBtRelationList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtRelation:export">
		<button class="btn_public" onclick="fxqIBtRelationList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtRelation:import">
		<button class="btn_public" onclick="fxqIBtRelationList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/fxq/fxqIBtRelation/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqIBtRelation/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission>
	</div>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>大额报告特征</th>
				<th>业务所属机构</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqIBtRelation">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqIBtRelation.dataDt}_${fxqIBtRelation.reportId}_${fxqIBtRelation.txId}"></td>
				<td><a href="${ctx}/fxq/fxqIBtRelation/formEdit?dataDt=${fxqIBtRelation.dataDt}&reportId=${fxqIBtRelation.reportId}&txId=${fxqIBtRelation.txId}">
					${fxqIBtRelation.hhTxFeaCd}
				</a></td>
				<td>
					${fxqIBtRelation.regOrgNo}
				</td>
				<td>
					${fxqIBtRelation.regDataStatus}
				</td>
				<td>
					${fxqIBtRelation.regCheckStatus}
				</td>
				<td>
					${fxqIBtRelation.regSendStatus}
				</td>
				<td>
					${fxqIBtRelation.regOperateStatus}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>