<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-保证合同信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbAssureInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbAssureInfo" action="${ctx}/ec/ecCCbAssureInfo/list" method="post" class="search-form">
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
							<form:input path="occurDate" htmlEscape="false" maxlength="8" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>从合同编号：</label>
						<div>
							<form:input path="subcontractNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>主合同编号：</label>
						<div>
							<form:input path="mainContractNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbAssureInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbAssureInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbAssureInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbAssureInfo:add">
		<button class="btn_public" onclick="ecCCbAssureInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:modify">
		<button class="btn_public" onclick="ecCCbAssureInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:remove">
		<button class="btn_public" onclick="ecCCbAssureInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:submit">
		<button class="btn_public" onclick="ecCCbAssureInfoList.submitEcCCbAssureInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:via">
		<button class="btn_public" onclick="ecCCbAssureInfoList.viaEcCCbAssureInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:return">
		<button class="btn_public" onclick="ecCCbAssureInfoList.returnEcCCbAssureInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:export">
		<button class="btn_public" onclick="ecCCbAssureInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAssureInfo:import">
		<button class="btn_public" onclick="ecCCbAssureInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbAssureInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbAssureInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>从合同编号</th>
				<th>主合同编号</th>
				<th>保证人名称</th>
				<th>贷款卡编码</th>
				<th>保证币种</th>
				<th>保证金额</th>
				<th>合同签订日期</th>
				<th>保证担保形式</th>
				<th>合同有效状态</th>
				<th>证件类型代码</th>
				<th>证件号码</th>
				<th>企业与自然人标识</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbAssureInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbAssureInfo.occurDate}@_#${ecCCbAssureInfo.subcontractNum}@_#${ecCCbAssureInfo.mainContractNo}@_#${ecCCbAssureInfo.regDataStatus}@_#${ecCCbAssureInfo.regCheckStatus}@_#${ecCCbAssureInfo.regSendStatus}@_#${ecCCbAssureInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbAssureInfoList.formView('${ecCCbAssureInfo.occurDate}','${ecCCbAssureInfo.subcontractNum}','${ecCCbAssureInfo.mainContractNo}')">
					${fns:getDictLabels(ecCCbAssureInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbAssureInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAssureInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAssureInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbAssureInfo.occurDate}
				</td>
				<td>
					${ecCCbAssureInfo.subcontractNum}
				</td>
				<td>
					${ecCCbAssureInfo.mainContractNo}
				</td>
				<td>
					${ecCCbAssureInfo.guarPersonName}
				</td>
				<td>
					${ecCCbAssureInfo.loanCardCd}
				</td>
				<td>
					${ecCCbAssureInfo.currency}
				</td>
				<td>
					${ecCCbAssureInfo.securityMoney}
				</td>
				<td>
					${ecCCbAssureInfo.contractGivenDate}
				</td>
				<td>
					${ecCCbAssureInfo.guarForm}
				</td>
				<td>
					${ecCCbAssureInfo.contractValidState}
				</td>
				<td>
					${ecCCbAssureInfo.certificateTypeCd}
				</td>
				<td>
					${ecCCbAssureInfo.certificateNum}
				</td>
				<td>
					${ecCCbAssureInfo.flag}
				</td>
				<td>
					${ecCCbAssureInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbAssureInfo.remarks}" class="listTitle">
						${ecCCbAssureInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbAssureInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>