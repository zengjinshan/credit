<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-欠息信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbOverdueInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbOverdueInfo" action="${ctx}/ec/ecCCbOverdueInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
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
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbOverdueInfo.occurDate}"
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
						<label>欠息类型：</label>
						<div>
							<form:select path="overdueInterestType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_OVERDUE_INTEREST_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNum" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>借款人名称：</label>
						<div>
							<form:input path="borrowerName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbOverdueInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbOverdueInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbOverdueInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:add">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:modify">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:remove">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:submit">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.submitEcCCbOverdueInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:via">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.viaEcCCbOverdueInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:return">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.returnEcCCbOverdueInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:export">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOverdueInfo:import">
		<button class="btn_public" onclick="ecCCbOverdueInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbOverdueInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbOverdueInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>欠息类型</th>
				<th>客户编号</th>
				<th>贷款卡编码</th>
				<th>金融机构代码</th>
				<th>借款人名称</th>
				<th>信息记录操作类型</th>
				<th>信息记录跟踪编号</th>
				<th>欠息金额</th>
				<th>欠息余额改变日期</th>
				<th>错误代码</th>
				<th>变更标示段值</th>
				<th>源机构代码</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbOverdueInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbOverdueInfo.occurDate}@_#${ecCCbOverdueInfo.currency}@_#${ecCCbOverdueInfo.overdueInterestType}@_#${ecCCbOverdueInfo.customerNum}@_#${ecCCbOverdueInfo.regDataStatus}@_#${ecCCbOverdueInfo.regCheckStatus}@_#${ecCCbOverdueInfo.regSendStatus}@_#${ecCCbOverdueInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbOverdueInfoList.formView('${ecCCbOverdueInfo.occurDate}','${ecCCbOverdueInfo.currency}','${ecCCbOverdueInfo.overdueInterestType}','${ecCCbOverdueInfo.customerNum}')">
					${fns:getDictLabels(ecCCbOverdueInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbOverdueInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOverdueInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOverdueInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbOverdueInfo.occurDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOverdueInfo.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOverdueInfo.overdueInterestType, 'EC_OVERDUE_INTEREST_TYPE', '')}
				</td>
				<td>
					${ecCCbOverdueInfo.customerNum}
				</td>
				<td>
					${ecCCbOverdueInfo.loanCardCd}
				</td>
				<td>
					${ecCCbOverdueInfo.financeCd}
				</td>
				<td>
					${ecCCbOverdueInfo.borrowerName}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOverdueInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbOverdueInfo.recordTraceNo}
				</td>
				<td>
					${ecCCbOverdueInfo.overdueInterestBanlance}
				</td>
				<td>
					${ecCCbOverdueInfo.overdueInterestShiftDate}
				</td>
				<td>
					${ecCCbOverdueInfo.errorCd}
				</td>
				<td>
					${ecCCbOverdueInfo.changeValue}
				</td>
				<td>
					${ecCCbOverdueInfo.sourceOrgCd}
				</td>
				<td>
					${ecCCbOverdueInfo.reportFlag}
				</td>
				<td>
					${ecCCbOverdueInfo.reportOrgCd}
				</td>
				<td>
					${ecCCbOverdueInfo.stockState}
				</td>
				<td>
					${ecCCbOverdueInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbOverdueInfo.remarks}" class="listTitle">
						${ecCCbOverdueInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbOverdueInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>