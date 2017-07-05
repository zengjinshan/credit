<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-公开授信管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbOpenCreditBusiList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbOpenCreditBusi" action="${ctx}/ec/ecCCbOpenCreditBusi/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbOpenCreditBusi.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>授信协议号码：</label>
						<div>
							<form:input path="creditAgrNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>信息记录操作类型：</label>
						<div>
							<form:select path="recordOpType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_RECORD_OP_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbOpenCreditBusi.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbOpenCreditBusi.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbOpenCreditBusiList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:add">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:modify">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:remove">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:submit">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.submitEcCCbOpenCreditBusi();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:via">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.viaEcCCbOpenCreditBusi();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:return">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.returnEcCCbOpenCreditBusi();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:export">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbOpenCreditBusi:import">
		<button class="btn_public" onclick="ecCCbOpenCreditBusiList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbOpenCreditBusi/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbOpenCreditBusi/importExcel" method="post" enctype="multipart/form-data"
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
				<th>授信协议号码</th>
				<th>金融机构代码</th>
				<th>信息记录操作类型</th>
				<th>信息记录跟踪编号</th>
				<th>借款人名称</th>
				<th>贷款卡编码</th>
				<th>币种</th>
				<th>授信额度</th>
				<th>授信生效起始日期</th>
				<th>授信终止日期</th>
				<th>授信额度注销生效日期</th>
				<th>授信额度注销原因</th>
				<th>错误代码</th>
				<th>源机构代码</th>
				<th>标示变更段值</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbOpenCreditBusi">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbOpenCreditBusi.occurDate}@_#${ecCCbOpenCreditBusi.creditAgrNo}@_#${ecCCbOpenCreditBusi.regDataStatus}@_#${ecCCbOpenCreditBusi.regCheckStatus}@_#${ecCCbOpenCreditBusi.regSendStatus}@_#${ecCCbOpenCreditBusi.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbOpenCreditBusiList.formView('${ecCCbOpenCreditBusi.occurDate}','${ecCCbOpenCreditBusi.creditAgrNo}')">
					${fns:getDictLabels(ecCCbOpenCreditBusi.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbOpenCreditBusi.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOpenCreditBusi.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOpenCreditBusi.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbOpenCreditBusi.occurDate}
				</td>
				<td>
					${ecCCbOpenCreditBusi.creditAgrNo}
				</td>
				<td>
					${ecCCbOpenCreditBusi.financeCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOpenCreditBusi.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbOpenCreditBusi.recordTraceNo}
				</td>
				<td>
					${ecCCbOpenCreditBusi.borrowerName}
				</td>
				<td>
					${ecCCbOpenCreditBusi.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbOpenCreditBusi.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbOpenCreditBusi.creditLimit}
				</td>
				<td>
					${ecCCbOpenCreditBusi.creditStartDate}
				</td>
				<td>
					${ecCCbOpenCreditBusi.creditEndDate}
				</td>
				<td>
					${ecCCbOpenCreditBusi.creditLimitLogoutDate}
				</td>
				<td>
					${ecCCbOpenCreditBusi.creditLimitLogoutReason}
				</td>
				<td>
					${ecCCbOpenCreditBusi.errorCd}
				</td>
				<td>
					${ecCCbOpenCreditBusi.sourceOrgCd}
				</td>
				<td>
					${ecCCbOpenCreditBusi.changeValue}
				</td>
				<td>
					${ecCCbOpenCreditBusi.reportFlag}
				</td>
				<td>
					${ecCCbOpenCreditBusi.reportOrgCd}
				</td>
				<td>
					${ecCCbOpenCreditBusi.stockState}
				</td>
				<td>
					${ecCCbOpenCreditBusi.regOrgName}
				</td>
				<td>
					<div title="${ecCCbOpenCreditBusi.remarks}" class="listTitle">
						${ecCCbOpenCreditBusi.remarks}
					</div>
				</td>
				<td>
					${ecCCbOpenCreditBusi.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>