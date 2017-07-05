<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借据信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbDuebillInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbDuebillInfo" action="${ctx}/ec/ecCCbDuebillInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbDuebillInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>借据编号：</label>
						<div>
							<form:input path="duebillNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>贷款业务种类：</label>
						<div>
							<form:select path="loanBusiType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_LOAN_BUSI_TYPE1')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>贷款形式：</label>
						<div>
							<form:select path="loanType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_LOAN_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>贷款性质：</label>
						<div>
							<form:select path="loanChar" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_LOAN_CHAR')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbDuebillInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbDuebillInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbDuebillInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:add">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:modify">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:remove">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:submit">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.submitEcCCbDuebillInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:via">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.viaEcCCbDuebillInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:return">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.returnEcCCbDuebillInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:export">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbDuebillInfo:import">
		<button class="btn_public" onclick="ecCCbDuebillInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbDuebillInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbDuebillInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>借据编号</th>
				<th>币种</th>
				<th>贷款借据金额</th>
				<th>贷款借据余额</th>
				<th>借据放款日期</th>
				<th>借据放款到期日</th>
				<th>贷款业务种类</th>
				<th>贷款形式</th>
				<th>贷款性质</th>
				<th>贷款投向</th>
				<th>贷款种类</th>
				<th>展期标志</th>
				<th>四级分类</th>
				<th>五级分类</th>
				<th>贷款合同号码</th>
				<th>上报标志</th>
				<th>信息记录操作类型</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbDuebillInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbDuebillInfo.occurDate}@_#${ecCCbDuebillInfo.duebillNo}@_#${ecCCbDuebillInfo.regDataStatus}@_#${ecCCbDuebillInfo.regCheckStatus}@_#${ecCCbDuebillInfo.regSendStatus}@_#${ecCCbDuebillInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbDuebillInfoList.formView('${ecCCbDuebillInfo.occurDate}','${ecCCbDuebillInfo.duebillNo}')">
					${fns:getDictLabels(ecCCbDuebillInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbDuebillInfo.occurDate}
				</td>
				<td>
					${ecCCbDuebillInfo.duebillNo}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbDuebillInfo.loanDuebillAmt}
				</td>
				<td>
					${ecCCbDuebillInfo.loanDuebillBalance}
				</td>
				<td>
					${ecCCbDuebillInfo.duebillOutDate}
				</td>
				<td>
					${ecCCbDuebillInfo.duebillMatureDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.loanBusiType, 'EC_LOAN_BUSI_TYPE1', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.loanType, 'EC_LOAN_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.loanChar, 'EC_LOAN_CHAR', '')}
				</td>
				<td>
					${ecCCbDuebillInfo.loanSend}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.loanKind, 'EC_LOAN_KIND', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.extensionFlag, 'EC_EXTENSION_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.fourCla, 'EC_FOUR_CLA', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.fiveCla, 'EC_FIVE_CLA', '')}
				</td>
				<td>
					${ecCCbDuebillInfo.loanContractNum}
				</td>
				<td>
					${ecCCbDuebillInfo.reportFlag}
				</td>
				<td>
					${fns:getDictLabels(ecCCbDuebillInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbDuebillInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbDuebillInfo.remarks}" class="listTitle">
						${ecCCbDuebillInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbDuebillInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>