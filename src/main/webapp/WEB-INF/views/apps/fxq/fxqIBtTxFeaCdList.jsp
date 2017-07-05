<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额特征补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtTxFeaCdList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqIBtTxFeaCd" action="${ctx}/fxq/fxqIBtTxFeaCd/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqIBtTxFeaCd.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>大额交易特征代码：</label>
						<div>
							<form:select path="hhTxFeaCd" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_HH_TX_FEA_CD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>校验信息：</label>
						<div>
							<form:select path="checkInfo" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_CHECK_INFO')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${fxqIBtTxFeaCd.regOrgNo}" labelName="regOrgName" labelValue="${fxqIBtTxFeaCd.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4">
						<label>数据状态：</label>
						<div>
							<form:select path="regDataStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_DATA_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
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
					<div class="span4">
						<label>操作状态：</label>
						<div>
							<form:select path="regOperateStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_OPERATE_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqIBtTxFeaCdList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:add">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:modify">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:remove">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:submit">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.submitFxqIBtTxFeaCd();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:via">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.viaFxqIBtTxFeaCd();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:return">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.returnFxqIBtTxFeaCd();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:export">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqIBtTxFeaCd:import">
		<button class="btn_public" onclick="fxqIBtTxFeaCdList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/fxq/fxqIBtTxFeaCd/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqIBtTxFeaCd/importExcel" method="post" enctype="multipart/form-data"
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
				<th>数据日期</th>
				<th>客户编号</th>
				<th>大额交易特征代码</th>
				<th>校验符号</th>
				<th>校验信息</th>
				<th>业务所属机构</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<th>操作状态</th>
				<th>报送期限</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqIBtTxFeaCd">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${fxqIBtTxFeaCd.dataDt}@_#${fxqIBtTxFeaCd.custNo}@_#${fxqIBtTxFeaCd.hhTxFeaCd}@_#${fxqIBtTxFeaCd.regDataStatus}@_#${fxqIBtTxFeaCd.regCheckStatus}@_#${fxqIBtTxFeaCd.regSendStatus}@_#${fxqIBtTxFeaCd.regOperateStatus}"></td>
				<td><a href="#" onclick="fxqIBtTxFeaCdList.formView('${fxqIBtTxFeaCd.dataDt}','${fxqIBtTxFeaCd.custNo}','${fxqIBtTxFeaCd.hhTxFeaCd}')">
					${fxqIBtTxFeaCd.dataDt}
				</a></td>
				<td>
					${fxqIBtTxFeaCd.custNo}
				</td>
				<td>
					<div title="${fns:getDictLabels(fxqIBtTxFeaCd.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtTxFeaCd.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}
					</div>
					
				</td>
				<td>
					${fxqIBtTxFeaCd.checkField}
				</td>
				<td>
					<div title="${fns:getDictLabels(fxqIBtTxFeaCd.checkInfo, 'FXQ_CHECK_INFO', '')}" class="listTitle">
						${fns:getDictLabels(fxqIBtTxFeaCd.checkInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</td>
				<td>
					${fxqIBtTxFeaCd.regOrgName}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTxFeaCd.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTxFeaCd.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTxFeaCd.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(fxqIBtTxFeaCd.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${fxqIBtTxFeaCd.periodValue}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>