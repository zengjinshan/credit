<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>担保人信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/test/testPcInfList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="testPcInf" action="${ctx}/test/testPcInf/list" method="post" class="search-form">
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
						<label>业务号：</label>
						<div>
							<form:input path="aaBusiNo" htmlEscape="false" maxlength="40" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>担保人姓名：</label>
						<div>
							<form:input path="eeAssuName" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>担保人证件类型：</label>
						<div>
							<form:input path="eeAssuCertTp" htmlEscape="false" maxlength="1" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>担保人证件号码：</label>
						<div>
							<form:input path="eeAssuCertNo" htmlEscape="false" maxlength="18" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${testPcInf.regOrgNo}" labelName="regOrgName" labelValue="${testPcInf.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="testPcInfList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="test:testPcInf:add">
		<button class="btn_public" onclick="testPcInfList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:modify">
		<button class="btn_public" onclick="testPcInfList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:remove">
		<button class="btn_public" onclick="testPcInfList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:submit">
		<button class="btn_public" onclick="testPcInfList.submitTestPcInf();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:via">
		<button class="btn_public" onclick="testPcInfList.viaTestPcInf();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:return">
		<button class="btn_public" onclick="testPcInfList.returnTestPcInf();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:export">
		<button class="btn_public" onclick="testPcInfList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="test:testPcInf:import">
		<button class="btn_public" onclick="testPcInfList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/test/testPcInf/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/test/testPcInf/importExcel" method="post" enctype="multipart/form-data"
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
				<th>业务号</th>
				<th>担保人姓名</th>
				<th>担保人证件类型</th>
				<th>担保人证件号码</th>
				<th>担保人担保金额</th>
				<th>担保人担保状态</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="testPcInf">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${testPcInf.aaBusiNo}_${testPcInf.eeAssuName}_${testPcInf.eeAssuCertTp}_${testPcInf.eeAssuCertNo}_${testPcInf.regDataStatus}_${testPcInf.regCheckStatus}_${testPcInf.regSendStatus}_${testPcInf.regOperateStatus}"></td>
				<td><a href="#" onclick="testPcInfList.formView('${testPcInf.aaBusiNo}','${testPcInf.eeAssuName}','${testPcInf.eeAssuCertTp}','${testPcInf.eeAssuCertNo}')">
					${fns:getDictLabels(testPcInf.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(testPcInf.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(testPcInf.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${testPcInf.aaBusiNo}
				</td>
				<td>
					${testPcInf.eeAssuName}
				</td>
				<td>
					${testPcInf.eeAssuCertTp}
				</td>
				<td>
					${testPcInf.eeAssuCertNo}
				</td>
				<td>
					${testPcInf.eeAssuAmt}
				</td>
				<td>
					${testPcInf.eeAsuManState}
				</td>
				<td>
					<fmt:formatDate value="${testPcInf.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${testPcInf.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>