<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>涉案账户子账户管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100404AcctList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tf100404Acct" action="${ctx}/tf/tf100404Acct/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<form:input path="dataDt" htmlEscape="false" maxlength="16" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>传输报文流水号：</label>
						<div>
							<form:input path="transSerialNumber" htmlEscape="false" maxlength="106" class="input-medium"/>
							<input type="hidden" id="tsn404acctlist" value="${tsn }"/>
						</div>
					</div>
					<div class="span4">
						<label>一般(子)账户序号：</label>
						<div>
							<form:input path="accountSerial" htmlEscape="false" maxlength="16" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div>
							<form:input path="regOrgNo" htmlEscape="false" maxlength="200" class="input-medium"/>
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
						<label>报送状态：</label>
						<div>
							<form:select path="regSendStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_SEND_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tf100404AcctList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="tf:tf100404Acct:add">
		<button class="btn_public" onclick="tf100404AcctList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:modify">
		<button class="btn_public" onclick="tf100404AcctList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:remove">
		<button class="btn_public" onclick="tf100404AcctList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<%-- <!-- 提交按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:submit">
		<button class="btn_public" onclick="tf100404AcctList.submitTf100404Acct();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:via">
		<button class="btn_public" onclick="tf100404AcctList.viaTf100404Acct();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:return">
		<button class="btn_public" onclick="tf100404AcctList.returnTf100404Acct();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission> --%>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:export">
		<button class="btn_public" onclick="tf100404AcctList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<%-- <!-- 导入按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Acct:import">
		<button class="btn_public" onclick="tf100404AcctList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/tf/tf100404Acct/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tf100404Acct/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission> --%>
	
	<shiro:hasPermission name="tf:tf100404Acct:view">
	<button class="btn_public" onclick="tf100404AcctList.showTransaction();"><i class="icon button_search"></i>查看交易</button>
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
				<th>传输报文流水号</th>
				<th>一般(子)账户序号</th>
				<th>定位账户账号</th>
				<th>一般(子)账户类别</th>
				<th>账户状态</th>
				<th>币种</th>
				<th>钞汇标志</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tf100404Acct">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tf100404Acct.transSerialNumber}@_#${tf100404Acct.accountSerial}@_#${tf100404Acct.regDataStatus}@_#${tf100404Acct.regCheckStatus}@_#${tf100404Acct.regSendStatus}@_#${tf100404Acct.regOperateStatus}"></td>
				<td>
					${fns:getDictLabels(tf100404Acct.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100404Acct.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td><a href="#" onclick="tf100404AcctList.formView('${tf100404Acct.transSerialNumber}','${tf100404Acct.accountSerial}')">
					${tf100404Acct.dataDt}
				</a></td>
				<td>
					${tf100404Acct.transSerialNumber}
				</td>
				<td>
					${tf100404Acct.accountSerial}
				</td>
				<td>
					${tf100404Acct.accountNumber}
				</td>
				<td>
					${tf100404Acct.accountType}
				</td>
				<td>
					${tf100404Acct.accountStatus}
				</td>
				<td>
					${tf100404Acct.currency}
				</td>
				<td>
					${tf100404Acct.cashRemit}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>