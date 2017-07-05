<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-抵押合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbMortInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbMortInfo" action="${ctx}/ec/ecCCbMortInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbMortInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>抵押序号：</label>
						<div>
							<form:input path="mortSerialNo" htmlEscape="false" maxlength="13" class="input-medium"/>
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
						<label>主合同编号：</label>
						<div>
							<form:input path="mainContractNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>抵押人名称：</label>
						<div>
							<form:input path="mortgagerName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>抵押编号：</label>
						<div>
							<form:input path="mortNo" htmlEscape="false" maxlength="80" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbMortInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbMortInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbMortInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbMortInfo:add">
		<button class="btn_public" onclick="ecCCbMortInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:modify">
		<button class="btn_public" onclick="ecCCbMortInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:remove">
		<button class="btn_public" onclick="ecCCbMortInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:submit">
		<button class="btn_public" onclick="ecCCbMortInfoList.submitEcCCbMortInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:via">
		<button class="btn_public" onclick="ecCCbMortInfoList.viaEcCCbMortInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:return">
		<button class="btn_public" onclick="ecCCbMortInfoList.returnEcCCbMortInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:export">
		<button class="btn_public" onclick="ecCCbMortInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbMortInfo:import">
		<button class="btn_public" onclick="ecCCbMortInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbMortInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbMortInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>抵押序号</th>
				<th>从合同编号</th>
				<th>主合同编号</th>
				<th>抵押人名称</th>
				<th>贷款卡编码</th>
				<th>抵押合同币种</th>
				<th>抵押物评估价值</th>
				<th>评估日期</th>
				<th>评估机构名称</th>
				<th>评估机构组织机构代码</th>
				<th>合同签订日期</th>
				<th>抵押物种类</th>
				<th>抵押物币种</th>
				<th>抵押金额</th>
				<th>登记机关</th>
				<th>登记日期</th>
				<th>抵押物说明</th>
				<th>合同有效状态</th>
				<th>抵押编号</th>
				<th>证件类型代码</th>
				<th>证件号码</th>
				<th>企业与自然人标识</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbMortInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbMortInfo.occurDate}@_#${ecCCbMortInfo.mortSerialNo}@_#${ecCCbMortInfo.subcontractNum}@_#${ecCCbMortInfo.mainContractNo}@_#${ecCCbMortInfo.mortNo}@_#${ecCCbMortInfo.regDataStatus}@_#${ecCCbMortInfo.regCheckStatus}@_#${ecCCbMortInfo.regSendStatus}@_#${ecCCbMortInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbMortInfoList.formView('${ecCCbMortInfo.occurDate}','${ecCCbMortInfo.mortSerialNo}','${ecCCbMortInfo.subcontractNum}','${ecCCbMortInfo.mainContractNo}','${ecCCbMortInfo.mortNo}')">
					${fns:getDictLabels(ecCCbMortInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbMortInfo.occurDate}
				</td>
				<td>
					${ecCCbMortInfo.mortSerialNo}
				</td>
				<td>
					${ecCCbMortInfo.subcontractNum}
				</td>
				<td>
					${ecCCbMortInfo.mainContractNo}
				</td>
				<td>
					${ecCCbMortInfo.mortgagerName}
				</td>
				<td>
					${ecCCbMortInfo.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.mortContractCurrency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbMortInfo.guarantyValuation}
				</td>
				<td>
					${ecCCbMortInfo.valuationDate}
				</td>
				<td>
					${ecCCbMortInfo.valuationOrgName}
				</td>
				<td>
					${ecCCbMortInfo.valuationOrgNo}
				</td>
				<td>
					${ecCCbMortInfo.contractGivenDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.guarantyType, 'EC_GUARANTY_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.guarantyCurrency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbMortInfo.guarantyAmt}
				</td>
				<td>
					${ecCCbMortInfo.registerDep}
				</td>
				<td>
					${ecCCbMortInfo.registerDate}
				</td>
				<td>
					${ecCCbMortInfo.guarantyDsc}
				</td>
				<td>
					${ecCCbMortInfo.contractValidState}
				</td>
				<td>
					${ecCCbMortInfo.mortNo}
				</td>
				<td>
					${fns:getDictLabels(ecCCbMortInfo.certificateTypeCd, 'EC_CERT_TYPE', '')}
				</td>
				<td>
					${ecCCbMortInfo.certificateNum}
				</td>
				<td>
					${ecCCbMortInfo.flag}
				</td>
				<td>
					${ecCCbMortInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbMortInfo.remarks}" class="listTitle">
						${ecCCbMortInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbMortInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>