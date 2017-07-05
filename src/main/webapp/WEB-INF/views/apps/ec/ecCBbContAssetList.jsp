<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借款人出资资本构成管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbContAssetList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbContAsset" action="${ctx}/ec/ecCBbContAsset/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>出资资本ID：</label>
						<div>
							<form:input path="contAssetId" htmlEscape="false" maxlength="13" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>出资方名称：</label>
						<div>
							<form:input path="contName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>证件类型：</label>
						<div>
							<form:select path="certType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>证件号码：</label>
						<div>
							<form:input path="certNum" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbContAsset.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbContAsset.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbContAssetList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbContAsset:add">
		<button class="btn_public" onclick="ecCBbContAssetList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:modify">
		<button class="btn_public" onclick="ecCBbContAssetList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:remove">
		<button class="btn_public" onclick="ecCBbContAssetList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:submit">
		<button class="btn_public" onclick="ecCBbContAssetList.submitEcCBbContAsset();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:via">
		<button class="btn_public" onclick="ecCBbContAssetList.viaEcCBbContAsset();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:return">
		<button class="btn_public" onclick="ecCBbContAssetList.returnEcCBbContAsset();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:export">
		<button class="btn_public" onclick="ecCBbContAssetList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbContAsset:import">
		<button class="btn_public" onclick="ecCBbContAssetList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbContAsset/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbContAsset/importExcel" method="post" enctype="multipart/form-data"
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
				<th>出资资本ID</th>
				<th>客户编号</th>
				<th>出资方名称</th>
				<th>出资方贷款卡编码</th>
				<th>组织机构代码</th>
				<th>登记注册号</th>
				<th>证件类型</th>
				<th>证件号码</th>
				<th>币种</th>
				<th>出资金额</th>
				<th>上报标志</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbContAsset">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbContAsset.contAssetId}@_#${ecCBbContAsset.regDataStatus}@_#${ecCBbContAsset.regCheckStatus}@_#${ecCBbContAsset.regSendStatus}@_#${ecCBbContAsset.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbContAssetList.formView('${ecCBbContAsset.contAssetId}')">
					${fns:getDictLabels(ecCBbContAsset.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbContAsset.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbContAsset.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbContAsset.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbContAsset.contAssetId}
				</td>
				<td>
					${ecCBbContAsset.customerNo}
				</td>
				<td>
					${ecCBbContAsset.contName}
				</td>
				<td>
					${ecCBbContAsset.contLoanCode}
				</td>
				<td>
					${ecCBbContAsset.orgCode}
				</td>
				<td>
					${ecCBbContAsset.registerNo}
				</td>
				<td>
					${fns:getDictLabels(ecCBbContAsset.certType, 'EC_CERT_TYPE', '')}
				</td>
				<td>
					${ecCBbContAsset.certNum}
				</td>
				<td>
					${fns:getDictLabels(ecCBbContAsset.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCBbContAsset.contAmt}
				</td>
				<td>
					${ecCBbContAsset.reportFlag}
				</td>
				<td>
					${ecCBbContAsset.regOrgName}
				</td>
				<td>
					<div title="${ecCBbContAsset.remarks}" class="listTitle">
						${ecCBbContAsset.remarks}
					</div>
				</td>
				<td>
					${ecCBbContAsset.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>