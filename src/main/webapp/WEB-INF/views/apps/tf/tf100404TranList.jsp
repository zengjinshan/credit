<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>涉案账户交易管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100404TranList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tf100404Tran" action="${ctx}/tf/tf100404Tran/list" method="post" class="search-form">
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
							<form:input path="transSerialNumber" id="tsn404tranList" htmlEscape="false" maxlength="106" class="input-medium"/>
							<input type="hidden" id="tsn" value="${tsn}"/>
						</div>
					</div>
					<div class="span4">
						<label>一般(子)账户序号：</label>
						<div>
							<form:input path="accountSerial" id="as404tranList" htmlEscape="false" maxlength="16" class="input-medium"/>
							<input type="hidden" id="as" value="${as}"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>交易ID：</label>
						<div>
							<form:input path="txId" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
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
				</div>
				<div>
					<div class="span4">
						<label>报送状态：</label>
						<div>
							<form:select path="regSendStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_SEND_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tf100404TranList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="tf:tf100404Tran:add">
		<button class="btn_public" onclick="tf100404TranList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Tran:modify">
		<button class="btn_public" onclick="tf100404TranList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Tran:remove">
		<button class="btn_public" onclick="tf100404TranList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<%-- <!-- 提交按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Tran:submit">
		<button class="btn_public" onclick="tf100404TranList.submitTf100404Tran();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Tran:via">
		<button class="btn_public" onclick="tf100404TranList.viaTf100404Tran();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Tran:return">
		<button class="btn_public" onclick="tf100404TranList.returnTf100404Tran();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission> --%>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tf100404Tran:export">
		<button class="btn_public" onclick="tf100404TranList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<%-- <shiro:hasPermission name="tf:tf100404Tran:import">
		<button class="btn_public" onclick="tf100404TranList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/tf/tf100404Tran/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tf100404Tran/importExcel" method="post" enctype="multipart/form-data"
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
				<th>报送状态</th>
				<th>数据日期</th>
				<th>传输报文流水号</th>
				<th>一般(子)账户序号</th>
				<th>交易ID</th>
				<th>借贷标志</th>
				<th>币种</th>
				<th>交易金额</th>
				<th>交易流水号</th>
				<th>交易对方名称</th>
				<th>交易对方账卡号</th>
				
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tf100404Tran">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tf100404Tran.transSerialNumber}@_#${tf100404Tran.accountSerial}@_#${tf100404Tran.txId}@_#${tf100404Tran.regDataStatus}@_#${tf100404Tran.regCheckStatus}@_#${tf100404Tran.regSendStatus}@_#${tf100404Tran.regOperateStatus}"></td>
				<td>
					${fns:getDictLabels(tf100404Tran.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100404Tran.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td><a href="#" onclick="tf100404TranList.formView('${tf100404Tran.transSerialNumber}','${tf100404Tran.accountSerial}','${tf100404Tran.txId}')">
					${tf100404Tran.dataDt}
				</a></td>
				<td>
					${tf100404Tran.transSerialNumber}
				</td>
				<td>
					${tf100404Tran.accountSerial}
				</td>
				<td>
					${tf100404Tran.txId}
				</td>
				<td>
					${tf100404Tran.borrowingSigns}
				</td>
				<td>
					${tf100404Tran.currency}
				</td>
				<td>
					${tf100404Tran.transactionAmount}
				</td>
				<td>
					${tf100404Tran.transactionSerial}
				</td>
				<td>
					${tf100404Tran.opponentName}
				</td>
				<td>
					${tf100404Tran.opponentAccountNumber}
				</td>
				
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>