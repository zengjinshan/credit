<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>异常事件管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tf100405MainList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tf100405Main" action="${ctx}/tf/tf100405Main/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>传输报文流水号：</label>
						<div>
							<form:input path="transSerialNumber" htmlEscape="false" maxlength="53" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>主账户：</label>
						<div>
							<form:input path="cardNumber" htmlEscape="false" maxlength="30" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>事件特征码：</label>
						<div>
							<form:select path="featureCode" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('TF_FEATURE_CODE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div>
							<form:input path="regOrgNo" htmlEscape="false" maxlength="100" class="input-medium"/>
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
						<label>操作状态：</label>
						<div>
							<form:select path="regOperateStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_OPERATE_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tf100405MainList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}" type="${type}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 新增按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:add">
		<button class="btn_public" onclick="tf100405MainList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:modify">
		<button class="btn_public" onclick="tf100405MainList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:remove">
		<button class="btn_public" onclick="tf100405MainList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:submit">
		<button class="btn_public" onclick="tf100405MainList.submitTf100405Main();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:via">
		<button class="btn_public" onclick="tf100405MainList.viaTf100405Main();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:return">
		<button class="btn_public" onclick="tf100405MainList.returnTf100405Main();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:export">
		<button class="btn_public" onclick="tf100405MainList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="tf:tf100405Main:import">
		<button class="btn_public" onclick="tf100405MainList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/tf/tf100405Main/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tf100405Main/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission>
	<!-- 生成报文 -->
	<shiro:hasPermission name="tf:tf100405Main:gen">
		<button class="btn_public" onclick="tf100405MainList.gen();"><i class="icon button_add"></i>上报</button>
	</shiro:hasPermission>

	<shiro:hasPermission name="tf:tf100405Acct:view">
	<button class="btn_public" onclick="tf100405MainList.showTransaction();"><i class="icon button_search"></i>查看子账户</button>
	</shiro:hasPermission>
	</div>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据状态</th>
				<th>报送状态</th>
				<th>数据日期</th>
				<th>传输报文流水号</th>
				<th>业务申请编号</th>
				<th>上报银行机构编码</th>
				<th>经办人姓名</th>
				<th>经办人电话</th>
				<th>主账户名称</th>
				<th>主账户</th>
				<th>事件特征码</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tf100405Main">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${tf100405Main.transSerialNumber}@_#${tf100405Main.regDataStatus}@_#${tf100405Main.regCheckStatus}@_#${tf100405Main.regSendStatus}@_#${tf100405Main.regOperateStatus}"></td>
				
				<td>
					${fns:getDictLabels(tf100405Main.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(tf100405Main.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				
				<td><a href="#" onclick="tf100405MainList.formView('${tf100405Main.transSerialNumber}')">
					${tf100405Main.dataDt}
				</a></td>
				<td>
					${tf100405Main.transSerialNumber}
				</td>
				<td>
					${tf100405Main.applicationId}
				</td>
				<td>
					${tf100405Main.bankId}
				</td>
				<td>
					${tf100405Main.operatorName}
				</td>
				<td>
					${tf100405Main.operatorPhoneNumber}
				</td>
				<td>
					${tf100405Main.accountName}
				</td>
				<td>
					${tf100405Main.cardNumber}
				</td>
				<td>
					${fns:getDictLabels(tf100405Main.featureCode, 'TF_FEATURE_CODE', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>