<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额交易补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtTransactionList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqIBtTransaction" action="${ctx}/fxq/fxqIBtTransaction/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqIBtTransaction.dataDt}"
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
						<label>交易ID：</label>
						<div>
							<form:input path="txId" htmlEscape="false" maxlength="50" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>客户名称：</label>
						<div>
							<form:input path="custName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户账号：</label>
						<div>
							<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>交易日期：</label>
						<div>
							<input name="txDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqIBtTransaction.txDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>交易机构名称：</label>
						<div>
							<form:input path="txOrgName" htmlEscape="false" maxlength="256" class="input-medium"/>
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
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqIBtTransactionList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 新增按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:add">
		<button class="btn_public" onclick="fxqIBtTransactionList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:modify">
		<button class="btn_public" onclick="fxqIBtTransactionList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:remove">
		<button class="btn_public" onclick="fxqIBtTransactionList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:submit">
		<button class="btn_public" onclick="fxqIBtTransactionList.submitFxqIBtTransaction();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:via">
		<button class="btn_public" onclick="fxqIBtTransactionList.viaFxqIBtTransaction();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:return">
		<button class="btn_public" onclick="fxqIBtTransactionList.returnFxqIBtTransaction();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:export">
		<button class="btn_public" onclick="fxqIBtTransactionList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTransaction:import">
		<button class="btn_public" onclick="fxqIBtTransactionList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxq/fxqIBtTransaction/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqIBtTransaction/importExcel" method="post" enctype="multipart/form-data"
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
				<th>数据日期</th>
				<th>客户编号</th>
				<th>大额交易特征代码</th>
				<th>交易ID</th>
				<th>客户名称</th>
				<th>客户账号</th>
				<th>账户类型</th>
				<th>开户机构名称</th>
				<th>金融机构代码</th>
				<th>金融机构行政区划代码</th>
				<th>金融机构代码类型说明</th>
				<th>金融机构和大额交易的关系类型代码</th>
				<th>交易日期</th>
				<th>交易时间</th>
				<th>币种代码</th>
				<th>交易金额</th>
				<th>收付标志</th>
				<th>交易机构名称</th>
				<th>业务标识号</th>
				<th>交易方式</th>
				<th>涉外收支交易分类和代码</th>
				<th>资金用途</th>
				<th>交易发生地</th>
				<th>交易方向</th>
				<th>交易对手客户名称</th>
				<th>交易对手证件类型</th>
				<th>交易对手证件号码</th>
				<th>交易对手客户账号</th>
				<th>交易对手账户类型</th>
				<th>交易对手金融机构名称</th>
				<th>交易对手金融机构代码网点类型</th>
				<th>校验信息</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqIBtTransaction">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqIBtTransaction.dataDt}@_#${fxqIBtTransaction.custNo}@_#${fxqIBtTransaction.hhTxFeaCd}@_#${fxqIBtTransaction.txId}@_#${fxqIBtTransaction.regDataStatus}@_#${fxqIBtTransaction.regCheckStatus}@_#${fxqIBtTransaction.regSendStatus}@_#${fxqIBtTransaction.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqIBtTransactionList.formView('${fxqIBtTransaction.dataDt}','${fxqIBtTransaction.custNo}','${fxqIBtTransaction.hhTxFeaCd}','${fxqIBtTransaction.txId}')">
					${fxqIBtTransaction.dataDt}
				</a></td>
				<td>
					${fxqIBtTransaction.custNo}
				</td>
				
				<td>
				<div title="${fns:getDictLabels(fxqIBtTransaction.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtTransaction.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}
					</div>
					
				</td>
				<td>
					${fxqIBtTransaction.txId}
				</td>
				<td>
					${fxqIBtTransaction.custName}
				</td>
				<td>
					${fxqIBtTransaction.custAcctNum}
				</td>
				<td>
						<div title="${fns:getDictLabels(fxqIBtTransaction.acctType, 'FXQ_ACCT_TYPE', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtTransaction.acctType, 'FXQ_ACCT_TYPE', '')}
					</div>
					
				</td>
				<td>
				<div title="${fxqIBtTransaction.openOrgName}" class="listTitle">
						${fxqIBtTransaction.openOrgName}
					</div>
					
				</td>
				<td>
					${fxqIBtTransaction.finOrgCd}
				</td>
				<td>
					${fxqIBtTransaction.finOrgDistrictCd}
				</td>
				<td>
					${fxqIBtTransaction.finOrgType}
				</td>
				<td>
				<div title="${fns:getDictLabels(fxqIBtTransaction.finOrgRelation, 'FXQ_FIN_ORG_RELATION', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtTransaction.finOrgRelation, 'FXQ_FIN_ORG_RELATION', '')}
					</div>
					
					
				</td>
				<td>
					${fxqIBtTransaction.txDt}
				</td>
				<td>
					${fxqIBtTransaction.txTm}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.currencyCd, 'FXQ_CURRENCY_CD', '')}
				</td>
				<td>
					${fxqIBtTransaction.txAmt}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.receivePayInd, 'FXQ_RECEIVE_PAY_IND', '')}
				</td>
				<td>
					${fxqIBtTransaction.txOrgName}
				</td>
				<td>
					${fxqIBtTransaction.bizIdNum}
				</td>
				<td>
					${fxqIBtTransaction.txMethod}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.tsct, 'FXQ_TSCT', '')}
				</td>
				<td>
					${fxqIBtTransaction.fundPurpose}
				</td>
				<td>
					${fxqIBtTransaction.txArea}
				</td>
				<td>
					${fxqIBtTransaction.txDir}
				</td>
				<td>
					${fxqIBtTransaction.cnterCustName}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.cnterCertType, 'FXQ_CERT_TYPE', '')}
				</td>
				<td>
					${fxqIBtTransaction.cnterCertNum}
				</td>
				<td>
					${fxqIBtTransaction.cnterCustAcctNum}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.cnterAcctType, 'FXQ_ACCT_TYPE', '')}
				</td>
				<td>
					${fxqIBtTransaction.cnterFinOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.cnterFinOrgType, 'FXQ_FIN_ORG_TYPE', '')}
				</td>
				<td>
					<div title="${fns:getDictLabels(fxqIBtTransaction.checkInfo, 'FXQ_CHECK_INFO', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtTransaction.checkInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTransaction.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>