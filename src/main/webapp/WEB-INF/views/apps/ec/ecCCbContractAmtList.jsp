<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-合同金额管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbContractAmtList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbContractAmt" action="${ctx}/ec/ecCCbContractAmt/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbContractAmt.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>币种：</label>
						<div>
							<form:select path="currency" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_CURRENCY')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>贷款合同号码：</label>
						<div>
							<form:input path="loanContractNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbContractAmt.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbContractAmt.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbContractAmtList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbContractAmt:add">
		<button class="btn_public" onclick="ecCCbContractAmtList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:modify">
		<button class="btn_public" onclick="ecCCbContractAmtList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:remove">
		<button class="btn_public" onclick="ecCCbContractAmtList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:submit">
		<button class="btn_public" onclick="ecCCbContractAmtList.submitEcCCbContractAmt();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:via">
		<button class="btn_public" onclick="ecCCbContractAmtList.viaEcCCbContractAmt();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:return">
		<button class="btn_public" onclick="ecCCbContractAmtList.returnEcCCbContractAmt();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:export">
		<button class="btn_public" onclick="ecCCbContractAmtList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbContractAmt:import">
		<button class="btn_public" onclick="ecCCbContractAmtList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbContractAmt/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbContractAmt/importExcel" method="post" enctype="multipart/form-data"
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
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
				<th>业务发生日期</th>
				<th>币种</th>
				<th>贷款合同号码</th>
				<th>贷款合同金额</th>
				<th>可用余额</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
				<th>信息记录类型</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbContractAmt">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbContractAmt.occurDate}@_#${ecCCbContractAmt.currency}@_#${ecCCbContractAmt.loanContractNum}@_#${ecCCbContractAmt.regDataStatus}@_#${ecCCbContractAmt.regCheckStatus}@_#${ecCCbContractAmt.regSendStatus}@_#${ecCCbContractAmt.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbContractAmtList.formView('${ecCCbContractAmt.occurDate}','${ecCCbContractAmt.currency}','${ecCCbContractAmt.loanContractNum}')">
					${fns:getDictLabels(ecCCbContractAmt.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbContractAmt.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbContractAmt.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbContractAmt.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbContractAmt.occurDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbContractAmt.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbContractAmt.loanContractNum}
				</td>
				<td>
					${ecCCbContractAmt.loanContractAmt}
				</td>
				<td>
					${ecCCbContractAmt.useableBalance}
				</td>
				<td>
					${ecCCbContractAmt.regOrgName}
				</td>
				<td>
					<div title="${ecCCbContractAmt.remarks}" class="listTitle">
						${ecCCbContractAmt.remarks}
					</div>
				</td>
				<td>
					${ecCCbContractAmt.multiTenancyId}
				</td>
				<td>
					${ecCCbContractAmt.recordTraceCd}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>