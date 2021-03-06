<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-贷款还款信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbLoanRepayInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbLoanRepayInfo" action="${ctx}/ec/ecCCbLoanRepayInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>还款信息ID：</label>
						<div>
							<form:input path="repayInfoId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbLoanRepayInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>还款方式：</label>
						<div>
							<form:select path="repayStyle" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_REPAY_STYLE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbLoanRepayInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbLoanRepayInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbLoanRepayInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:add">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:modify">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:remove">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:submit">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.submitEcCCbLoanRepayInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:via">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.viaEcCCbLoanRepayInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:return">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.returnEcCCbLoanRepayInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:export">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbLoanRepayInfo:import">
		<button class="btn_public" onclick="ecCCbLoanRepayInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbLoanRepayInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbLoanRepayInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>还款信息ID</th>
				<th>业务发生日期</th>
				<th>借据编号</th>
				<th>还款日期</th>
				<th>还款次数</th>
				<th>还款方式</th>
				<th>还款金额</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbLoanRepayInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbLoanRepayInfo.repayInfoId}@_#${ecCCbLoanRepayInfo.regDataStatus}@_#${ecCCbLoanRepayInfo.regCheckStatus}@_#${ecCCbLoanRepayInfo.regSendStatus}@_#${ecCCbLoanRepayInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbLoanRepayInfoList.formView('${ecCCbLoanRepayInfo.repayInfoId}')">
					${fns:getDictLabels(ecCCbLoanRepayInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbLoanRepayInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanRepayInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanRepayInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbLoanRepayInfo.repayInfoId}
				</td>
				<td>
					${ecCCbLoanRepayInfo.occurDate}
				</td>
				<td>
					${ecCCbLoanRepayInfo.duebillNo}
				</td>
				<td>
					${ecCCbLoanRepayInfo.repayDate}
				</td>
				<td>
					${ecCCbLoanRepayInfo.repayTimes}
				</td>
				<td>
					${fns:getDictLabels(ecCCbLoanRepayInfo.repayStyle, 'EC_REPAY_STYLE', '')}
				</td>
				<td>
					${ecCCbLoanRepayInfo.repayAmt}
				</td>
				<td>
					${ecCCbLoanRepayInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbLoanRepayInfo.remarks}" class="listTitle">
						${ecCCbLoanRepayInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbLoanRepayInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>