<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-贷款合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbLoanBusiList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbLoanBusi" action="${ctx}/ec/ecCCbLoanBusi/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbLoanBusi.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>贷款合同号码：</label>
						<div>
							<form:input path="loanContractNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>借款人名称：</label>
						<div>
							<form:input path="borrowerName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbLoanBusi.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbLoanBusi.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbLoanBusiList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbLoanBusi:add">
		<button class="btn_public" onclick="ecCCbLoanBusiList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:modify">
		<button class="btn_public" onclick="ecCCbLoanBusiList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:remove">
		<button class="btn_public" onclick="ecCCbLoanBusiList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:submit">
		<button class="btn_public" onclick="ecCCbLoanBusiList.submitEcCCbLoanBusi();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:via">
		<button class="btn_public" onclick="ecCCbLoanBusiList.viaEcCCbLoanBusi();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:return">
		<button class="btn_public" onclick="ecCCbLoanBusiList.returnEcCCbLoanBusi();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:export">
		<button class="btn_public" onclick="ecCCbLoanBusiList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanBusi:import">
		<button class="btn_public" onclick="ecCCbLoanBusiList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbLoanBusi/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbLoanBusi/importExcel" method="post" enctype="multipart/form-data"
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
				<th>贷款合同号码</th>
				<th>金融机构代码</th>
				<th>贷款卡编码</th>
				<th>借款人名称</th>
				<th>授信协议号码</th>
				<th>贷款合同生效日期</th>
				<th>贷款合同终止日期</th>
				<th>银团标志</th>
				<th>担保标志</th>
				<th>合同有效状态</th>
				<th>信息记录操作类型</th>
				<th>信息记录跟踪编号</th>
				<th>错误代码</th>
				<th>源机构代码</th>
				<th>变更标示段值</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
				<th>信息记录类型</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbLoanBusi">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbLoanBusi.occurDate}@_#${ecCCbLoanBusi.loanContractNum}@_#${ecCCbLoanBusi.regDataStatus}@_#${ecCCbLoanBusi.regCheckStatus}@_#${ecCCbLoanBusi.regSendStatus}@_#${ecCCbLoanBusi.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbLoanBusiList.formView('${ecCCbLoanBusi.occurDate}','${ecCCbLoanBusi.loanContractNum}')">
					${fns:getDictLabels(ecCCbLoanBusi.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbLoanBusi.occurDate}
				</td>
				<td>
					${ecCCbLoanBusi.loanContractNum}
				</td>
				<td>
					${ecCCbLoanBusi.financeCd}
				</td>
				<td>
					${ecCCbLoanBusi.loanCardCd}
				</td>
				<td>
					${ecCCbLoanBusi.borrowerName}
				</td>
				<td>
					${ecCCbLoanBusi.creditAgrNo}
				</td>
				<td>
					${ecCCbLoanBusi.loanValidDate}
				</td>
				<td>
					${ecCCbLoanBusi.loanEndDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.bankCorpFlag, 'EC_BANK_CORP_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.guarFlag, 'EC_GUAR_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.contractValidState, 'EC_CONTRACT_VALID_STATE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanBusi.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbLoanBusi.recordTraceNo}
				</td>
				<td>
					${ecCCbLoanBusi.errorCd}
				</td>
				<td>
					${ecCCbLoanBusi.sourceOrgCd}
				</td>
				<td>
					${ecCCbLoanBusi.changeValue}
				</td>
				<td>
					${ecCCbLoanBusi.reportFlag}
				</td>
				<td>
					${ecCCbLoanBusi.reportOrgCd}
				</td>
				<td>
					${ecCCbLoanBusi.stockState}
				</td>
				<td>
					${ecCCbLoanBusi.regOrgName}
				</td>
				<td>
					<div title="${ecCCbLoanBusi.remarks}" class="listTitle">
						${ecCCbLoanBusi.remarks}
					</div>
				</td>
				<td>
					${ecCCbLoanBusi.multiTenancyId}
				</td>
				<td>
					${ecCCbLoanBusi.recordTraceCd}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>