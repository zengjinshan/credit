<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-担保信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbGuarInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbGuarInfo" action="${ctx}/ec/ecCCbGuarInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbGuarInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>主合同编号：</label>
						<div>
							<form:input path="mainContractNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>从合同编号：</label>
						<div>
							<form:input path="subcontractNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>信贷业务种类：</label>
						<div>
							<form:select path="loanBusiType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_LOAN_BUSI_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbGuarInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbGuarInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbGuarInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbGuarInfo:add">
		<button class="btn_public" onclick="ecCCbGuarInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:modify">
		<button class="btn_public" onclick="ecCCbGuarInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:remove">
		<button class="btn_public" onclick="ecCCbGuarInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:submit">
		<button class="btn_public" onclick="ecCCbGuarInfoList.submitEcCCbGuarInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:via">
		<button class="btn_public" onclick="ecCCbGuarInfoList.viaEcCCbGuarInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:return">
		<button class="btn_public" onclick="ecCCbGuarInfoList.returnEcCCbGuarInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:export">
		<button class="btn_public" onclick="ecCCbGuarInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbGuarInfo:import">
		<button class="btn_public" onclick="ecCCbGuarInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbGuarInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbGuarInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>主合同编号</th>
				<th>从合同编号</th>
				<th>信息记录类型</th>
				<th>金融机构代码</th>
				<th>贷款卡编码</th>
				<th>信贷业务种类</th>
				<th>信息记录操作类型</th>
				<th>错误代码</th>
				<th>源机构代码</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>债项编号</th>
				<th>从合同状态</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbGuarInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbGuarInfo.occurDate}@_#${ecCCbGuarInfo.mainContractNo}@_#${ecCCbGuarInfo.subcontractNum}@_#${ecCCbGuarInfo.regDataStatus}@_#${ecCCbGuarInfo.regCheckStatus}@_#${ecCCbGuarInfo.regSendStatus}@_#${ecCCbGuarInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbGuarInfoList.formView('${ecCCbGuarInfo.occurDate}','${ecCCbGuarInfo.mainContractNo}','${ecCCbGuarInfo.subcontractNum}')">
					${fns:getDictLabels(ecCCbGuarInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbGuarInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbGuarInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbGuarInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbGuarInfo.occurDate}
				</td>
				<td>
					${ecCCbGuarInfo.mainContractNo}
				</td>
				<td>
					${ecCCbGuarInfo.subcontractNum}
				</td>
				<td>
					${fns:getDictLabels(ecCCbGuarInfo.infoRecordType, 'EC_RECORD_TRACE_CD', '')}
				</td>
				<td>
					${ecCCbGuarInfo.financeCd}
				</td>
				<td>
					${ecCCbGuarInfo.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbGuarInfo.loanBusiType, 'EC_LOAN_BUSI_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbGuarInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbGuarInfo.errorCd}
				</td>
				<td>
					${ecCCbGuarInfo.sourceOrgCd}
				</td>
				<td>
					${ecCCbGuarInfo.reportFlag}
				</td>
				<td>
					${ecCCbGuarInfo.reportOrgCd}
				</td>
				<td>
					${ecCCbGuarInfo.loanNum}
				</td>
				<td>
					${ecCCbGuarInfo.subcontractState}
				</td>
				<td>
					${ecCCbGuarInfo.stockState}
				</td>
				<td>
					${ecCCbGuarInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbGuarInfo.remarks}" class="listTitle">
						${ecCCbGuarInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbGuarInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>