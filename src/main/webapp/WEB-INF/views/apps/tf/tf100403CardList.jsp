<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常开卡卡表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100403CardList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tf100403Card" action="${ctx}/tf/tf100403Card/list" method="post" class="search-form">
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
						<label>传输报文流水号：</label>
						<div>
							<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-medium"/>
							<input type="hidden" id="tsn" value="${tsn}"/>
						</div>
					</div>
					<div class="span4">
						<label>卡号：</label>
						<div>
							<form:input path="cardNumber" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tf100403CardList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<button class="btn_public" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
	<!-- 新增按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Card:add">
		<button class="btn_public" onclick="tf100403CardList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Card:modify">
		<button class="btn_public" onclick="tf100403CardList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Card:remove">
		<button class="btn_public" onclick="tf100403CardList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<%-- <shiro:hasPermission name="tf:tf100403Card:submit">
		<button class="btn_public" onclick="tf100403CardList.submitTf100403Card();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission> --%>
	<!-- 通过按钮权限 -->
	<%-- <shiro:hasPermission name="tf:tf100403Card:via">
		<button class="btn_public" onclick="tf100403CardList.viaTf100403Card();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission> --%>
	<!-- 退回按钮权限 -->
	<%-- <shiro:hasPermission name="tf:tf100403Card:return">
		<button class="btn_public" onclick="tf100403CardList.returnTf100403Card();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission> --%>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Card:export">
		<button class="btn_public" onclick="tf100403CardList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<%-- <shiro:hasPermission name="tf:tf100403Card:import">
		<button class="btn_public" onclick="tf100403CardList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/tf/tf100403Card/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tf100403Card/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission> --%>
	</div>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
				<th>数据日期</th>
				<th>传输报文流水号</th>
				<th>卡号</th>
				<th>开卡时间</th>
				<th>开卡地点</th>
				<th>业务所属机构</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>修改者</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tf100403Card">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tf100403Card.transSerialNumber}@_#${tf100403Card.cardNumber}@_#${tf100403Card.regDataStatus}@_#${tf100403Card.regCheckStatus}@_#${tf100403Card.regSendStatus}@_#${tf100403Card.regOperateStatus}"></td>
				<td>
					${fns:getDictLabels(tf100403Card.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100403Card.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100403Card.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100403Card.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td><a href="#" onclick="tf100403CardList.formView('${tf100403Card.transSerialNumber}','${tf100403Card.cardNumber}')">
					${tf100403Card.dataDt}
				</a></td>
				<td>
					${tf100403Card.transSerialNumber}
				</td>
				<td>
					${tf100403Card.cardNumber}
				</td>
				<td>
					${tf100403Card.accountOpentime}
				</td>
				<td>
					${tf100403Card.accountOpenplace}
				</td>
				<td>
					${tf100403Card.regOrgName}
				</td>
				
				<td>
					${tf100403Card.createBy.name}
				</td>
				<td>
					<fmt:formatDate value="${tf100403Card.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${tf100403Card.updateBy.name}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>