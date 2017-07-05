<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常开卡管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100403MainList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tf100403Main" action="${ctx}/tf/tf100403Main/list" method="post" class="search-form">
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
						<label>证件类型：</label>
						<div>
							<form:select path="idType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('TF_ID_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>证件号：</label>
						<div>
							<form:input path="idNumber" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>传输报文流水号：</label>
						<div>
							<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>事件特征码：</label>
						<div>
							<form:select path="featureCode" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('TF_FEATURE_CODE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tf100403MainList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}" type="${type}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 新增按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:add">
		<button class="btn_public" onclick="tf100403MainList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:modify">
		<button class="btn_public" onclick="tf100403MainList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:remove">
		<button class="btn_public" onclick="tf100403MainList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:submit">
		<button class="btn_public" onclick="tf100403MainList.submitTf100403Main();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:via">
		<button class="btn_public" onclick="tf100403MainList.viaTf100403Main();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:return">
		<button class="btn_public" onclick="tf100403MainList.returnTf100403Main();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:export">
		<button class="btn_public" onclick="tf100403MainList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="tf:tf100403Main:import">
		<button class="btn_public" onclick="tf100403MainList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/tf/tf100403Main/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tf100403Main/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	<!-- 生成报文 -->
	<shiro:hasPermission name="tf:tf100403Main:gen">
		<button class="btn_public" onclick="tf100403MainList.gen();"><i class="icon button_add"></i>生成报文</button>
	</shiro:hasPermission>
	</shiro:hasPermission>
		<shiro:hasPermission name="tf:tf100403Card:view">
	<button class="btn_public" onclick="tf100403MainList.showTransaction();"><i class="icon button_search"></i>查看交易</button>
	</shiro:hasPermission>
	</div>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据状态</th>
				<th>报送状态</th>
				<th>数据日期</th>
				<th>证件类型</th>
				<th>证件号</th>
				<th>传输报文流水号</th>
				<th>业务申请编号</th>
				<th>事件特征码</th>
				<th>姓名</th>
				<th>业务所属机构</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tf100403Main">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tf100403Main.transSerialNumber}@_#${tf100403Main.regDataStatus}@_#${tf100403Main.regCheckStatus}@_#${tf100403Main.regSendStatus}@_#${tf100403Main.regOperateStatus}"></td>
				<td>
					${fns:getDictLabels(tf100403Main.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100403Main.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td><a href="#" onclick="tf100403MainList.formView('${tf100403Main.transSerialNumber}')">
					${tf100403Main.dataDt}
				</a></td>
				<td>
					${fns:getDictLabels(tf100403Main.idType, 'TF_ID_TYPE', '')}
				</td>
				<td>
					${tf100403Main.idNumber}
				</td>
				<td>
					${tf100403Main.transSerialNumber}
				</td>
				<td>
					${tf100403Main.applicationId}
				</td>
				<td>
					${fns:getDictLabels(tf100403Main.featureCode, 'TF_FEATURE_CODE', '')}
				</td>
				<td>
					${tf100403Main.idName}
				</td>
				<td>
					${tf100403Main.regOrgName}
				</td>
				
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>