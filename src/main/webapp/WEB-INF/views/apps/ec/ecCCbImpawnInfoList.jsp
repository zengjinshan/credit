<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-质押合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbImpawnInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbImpawnInfo" action="${ctx}/ec/ecCCbImpawnInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<form:input path="occurDate" htmlEscape="false" maxlength="8" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>质押序号：</label>
						<div>
							<form:input path="impawnSerialNo" htmlEscape="false" maxlength="13" class="input-medium"/>
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
						<label>质押编号：</label>
						<div>
							<form:input path="impawnNo" htmlEscape="false" maxlength="80" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbImpawnInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbImpawnInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbImpawnInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:add">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:modify">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:remove">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:submit">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.submitEcCCbImpawnInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:via">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.viaEcCCbImpawnInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:return">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.returnEcCCbImpawnInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:export">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbImpawnInfo:import">
		<button class="btn_public" onclick="ecCCbImpawnInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbImpawnInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbImpawnInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>质押序号</th>
				<th>从合同编号</th>
				<th>主合同编号</th>
				<th>出质人名称</th>
				<th>贷款卡编码</th>
				<th>质押币种</th>
				<th>质押物价值</th>
				<th>合同签订日期</th>
				<th>质押物种类</th>
				<th>质押物币种</th>
				<th>质押金额</th>
				<th>合同有效状态</th>
				<th>质押编号</th>
				<th>证件类型代码</th>
				<th>证件号码</th>
				<th>企业与自然人标识</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbImpawnInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbImpawnInfo.occurDate}@_#${ecCCbImpawnInfo.impawnSerialNo}@_#${ecCCbImpawnInfo.subcontractNum}@_#${ecCCbImpawnInfo.mainContractNo}@_#${ecCCbImpawnInfo.impawnNo}@_#${ecCCbImpawnInfo.regDataStatus}@_#${ecCCbImpawnInfo.regCheckStatus}@_#${ecCCbImpawnInfo.regSendStatus}@_#${ecCCbImpawnInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbImpawnInfoList.formView('${ecCCbImpawnInfo.occurDate}','${ecCCbImpawnInfo.impawnSerialNo}','${ecCCbImpawnInfo.subcontractNum}','${ecCCbImpawnInfo.mainContractNo}','${ecCCbImpawnInfo.impawnNo}')">
					${fns:getDictLabels(ecCCbImpawnInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbImpawnInfo.occurDate}
				</td>
				<td>
					${ecCCbImpawnInfo.impawnSerialNo}
				</td>
				<td>
					${ecCCbImpawnInfo.subcontractNum}
				</td>
				<td>
					${ecCCbImpawnInfo.mainContractNo}
				</td>
				<td>
					${ecCCbImpawnInfo.bringImpawnPersonName}
				</td>
				<td>
					${ecCCbImpawnInfo.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.impawnCurrency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbImpawnInfo.impawnValue}
				</td>
				<td>
					${ecCCbImpawnInfo.contractGivenDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.impawnType, 'EC_IMPAWN_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.impawnGoodsCurrency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbImpawnInfo.impawnAmt}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.contractValidState, 'EC_CONTRACT_VALID_STATE', '')}
				</td>
				<td>
					${ecCCbImpawnInfo.impawnNo}
				</td>
				<td>
					${fns:getDictLabels(ecCCbImpawnInfo.certificateTypeCd, 'EC_CERT_TYPE', '')}
				</td>
				<td>
					${ecCCbImpawnInfo.certificateNum}
				</td>
				<td>
					${ecCCbImpawnInfo.flag}
				</td>
				<td>
					${ecCCbImpawnInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbImpawnInfo.remarks}" class="listTitle">
						${ecCCbImpawnInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbImpawnInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>