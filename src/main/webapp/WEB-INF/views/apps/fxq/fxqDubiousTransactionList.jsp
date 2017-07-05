<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑案例交易列表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqDubiousTransactionList.js" type="text/javascript"></script>
</head>
<body>
	<%-- <!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqDubiousTransaction" action="${ctx}/fxq/fxqDubiousTransaction/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqDubiousTransaction.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户账号：</label>
						<div>
							<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>交易ID：</label>
						<div>
							<form:input path="txId" htmlEscape="false" maxlength="20" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户名称：</label>
						<div>
							<form:input path="custName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>交易机构名称：</label>
						<div>
							<form:input path="txOrgName" htmlEscape="false" maxlength="256" class="input-medium"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqDubiousTransactionList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div> --%>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<button class="btn_public" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
	<%-- <!-- 编辑按钮权限 -->
	<shiro:hasPermission name="fxq:fxqDubiousTransaction:edit">
		<button class="btn_public" onclick="fxqDubiousTransactionList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="fxqDubiousTransactionList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="fxqDubiousTransactionList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqDubiousTransaction:export">
		<button class="btn_public" onclick="fxqDubiousTransactionList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqDubiousTransaction:import">
		<button class="btn_public" onclick="fxqDubiousTransactionList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/fxq/fxqDubiousTransaction/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqDubiousTransaction/importExcel" method="post" enctype="multipart/form-data"
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
				<th>数据日期</th>
				<th>客户编号</th>
				<th>客户账号</th>
				<th>交易ID</th>
				<th>交易日期</th>
				<th>客户名称</th>
				<th>币种代码</th>
				<th>交易金额</th>
				<th>资金收付标志</th>
				<th>交易对手姓名名称</th>
				<th>交易对手客户账号</th>
				<th>交易机构名称</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqDubiousTransaction">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqDubiousTransaction.dataDt}_${fxqDubiousTransaction.custNo}_${fxqDubiousTransaction.custAcctNum}_${fxqDubiousTransaction.txId}_${fxqDubiousTransaction.regDataStatus}_${fxqDubiousTransaction.regCheckStatus}_${fxqDubiousTransaction.regSendStatus}_${fxqDubiousTransaction.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqDubiousTransactionList.formView('${fxqDubiousTransaction.dataDt}','${fxqDubiousTransaction.custNo}','${fxqDubiousTransaction.custAcctNum}','${fxqDubiousTransaction.txId}')">
					${fxqDubiousTransaction.dataDt}
				</a></td>
				<td>
					${fxqDubiousTransaction.custNo}
				</td>
				<td>
					${fxqDubiousTransaction.custAcctNum}
				</td>
				<td>
					${fxqDubiousTransaction.txId}
				</td>
				<td>
					${fxqDubiousTransaction.txDt}
				</td>
				<td>
					${fxqDubiousTransaction.custName}
				</td>
				<td>
					${fns:getDictLabels(fxqDubiousTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
				</td>
				<td>
					${fxqDubiousTransaction.txAmt}
				</td>
				<td>
					${fns:getDictLabels(fxqDubiousTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
				</td>
				<td>
					${fxqDubiousTransaction.cnterCustName}
				</td>
				<td>
					${fxqDubiousTransaction.cnterCustAcctNum}
				</td>
				<td>
					${fxqDubiousTransaction.txOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqDubiousTransaction.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqDubiousTransaction.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqDubiousTransaction.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>