<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>个人征信数据报送层管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcIImnMsgBasDatList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="pcIImnMsgBasDat" action="${ctx}/pc/pcIImnMsgBasDat/list" method="post" class="search-form">
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
						<label>金融机构代码：</label>
						<div>
							<form:input path="aaOrgNo" htmlEscape="false" maxlength="14" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务种类：</label>
						<div>
							<form:select path="aaProd" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('PC_AA_PROD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务种类细分：</label>
						<div>
							<form:select path="aaProdKind" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('PC_AA_PROD_KIND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
						<label>担保方式：</label>
						<div>
							<form:select path="aaAssuKind" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('PC_AA_ASSU_KIND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>结算-应还款日：</label>
						<div>
							<form:input path="aaPayDate" htmlEscape="false" maxlength="40" class="input-medium"/>
							<%-- <input name="aaPayDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${pcIImnMsgBasDat.aaPayDate}"
								onclick="WdatePicker({dateFmt:'',isShowClear:false});"/> --%>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${pcIImnMsgBasDat.regOrgNo}" labelName="regOrgName" labelValue="${pcIImnMsgBasDat.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="pcIImnMsgBasDatList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:add">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:modify">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:remove">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:submit">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.submitPcIImnMsgBasDat();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:via">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.viaPcIImnMsgBasDat();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:return">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.returnPcIImnMsgBasDat();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:export">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="pc:pcIImnMsgBasDat:import">
		<button class="btn_public" onclick="pcIImnMsgBasDatList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/pc/pcIImnMsgBasDat/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/pc/pcIImnMsgBasDat/importExcel" method="post" enctype="multipart/form-data"
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
				<th>金融机构代码</th>
				<th>业务种类</th>
				<th>业务种类细分</th>
				<th>业务号</th>
				<th>担保方式</th>
				<th>结算-应还款日</th>
				<th>授信额度</th>
				<th>修改时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="pcIImnMsgBasDat">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${pcIImnMsgBasDat.aaBusiNo}_${pcIImnMsgBasDat.regDataStatus}_${pcIImnMsgBasDat.regCheckStatus}_${pcIImnMsgBasDat.regSendStatus}_${pcIImnMsgBasDat.regOperateStatus}"></td>
				<td><a href="#" onclick="pcIImnMsgBasDatList.formView('${pcIImnMsgBasDat.aaBusiNo}')">
					${fns:getDictLabel(pcIImnMsgBasDat.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabel(pcIImnMsgBasDat.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(pcIImnMsgBasDat.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${pcIImnMsgBasDat.aaOrgNo}
				</td>
				<td>
					${fns:getDictLabel(pcIImnMsgBasDat.aaProd, 'PC_AA_PROD', '')}
				</td>
				<td>
					${fns:getDictLabel(pcIImnMsgBasDat.aaProdKind, 'PC_AA_PROD_KIND', '')}
				</td>
				<td>
					${pcIImnMsgBasDat.aaBusiNo}
				</td>
				<td>
					${fns:getDictLabel(pcIImnMsgBasDat.aaAssuKind, 'PC_AA_ASSU_KIND', '')}
				</td>
				<td>
					${pcIImnMsgBasDat.aaPayDate}
				</td>
				<td>
					${pcIImnMsgBasDat.aaCredAmt}
				</td>
				<td>
					<fmt:formatDate value="${pcIImnMsgBasDat.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${pcIImnMsgBasDat.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>