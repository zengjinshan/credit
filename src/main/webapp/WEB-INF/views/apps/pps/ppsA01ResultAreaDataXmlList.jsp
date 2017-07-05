<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>支付统计指标_XML数据管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pps/ppsA01ResultAreaDataXmlList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ppsA01ResultAreaDataXml" action="${ctx}/pps/ppsA01ResultAreaDataXml/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>期数：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ppsA01ResultAreaDataXml.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMM',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>报表名称：</label>
						<div>
							<form:input path="reportName" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>指标ID：</label>
						<div>
							<form:input path="indexId" htmlEscape="false" maxlength="18" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>地区类型：</label>
						<div>
							<form:input path="areaType" htmlEscape="false" maxlength="10" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>地区代码：</label>
						<div>
							<form:input path="areaCd" htmlEscape="false" maxlength="10" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ppsA01ResultAreaDataXml.regOrgNo}" labelName="regOrgName" labelValue="${ppsA01ResultAreaDataXml.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>多法人标识：</label>
						<div>
							<form:input path="multiCd" htmlEscape="false" maxlength="20" class="input-medium"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ppsA01ResultAreaDataXmlList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
	<!-- 编辑按钮权限 -->
	<shiro:hasPermission name="pps:ppsA01ResultAreaDataXml:edit">
		<button class="btn_public" onclick="ppsA01ResultAreaDataXmlList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="ppsA01ResultAreaDataXmlList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="ppsA01ResultAreaDataXmlList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="pps:ppsA01ResultAreaDataXml:export">
		<button class="btn_public" onclick="ppsA01ResultAreaDataXmlList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="pps:ppsA01ResultAreaDataXml:import">
		<button class="btn_public" onclick="ppsA01ResultAreaDataXmlList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/pps/ppsA01ResultAreaDataXml/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/pps/ppsA01ResultAreaDataXml/importExcel" method="post" enctype="multipart/form-data"
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
				<th>期数</th>
				<th>报表名称</th>
				<th>指标ID</th>
				<th>地区类型</th>
				<th>地区代码</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
				<th>多法人标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ppsA01ResultAreaDataXml">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ppsA01ResultAreaDataXml.dataDt}_${ppsA01ResultAreaDataXml.reportName}_${ppsA01ResultAreaDataXml.indexId}_${ppsA01ResultAreaDataXml.areaType}_${ppsA01ResultAreaDataXml.areaCd}_${ppsA01ResultAreaDataXml.multiCd}_${ppsA01ResultAreaDataXml.regDataStatus}_${ppsA01ResultAreaDataXml.regCheckStatus}_${ppsA01ResultAreaDataXml.regSendStatus}_${ppsA01ResultAreaDataXml.regOperateStatus}"></td>
				<td><a href="#" onclick="ppsA01ResultAreaDataXmlList.formView('${ppsA01ResultAreaDataXml.dataDt}','${ppsA01ResultAreaDataXml.reportName}','${ppsA01ResultAreaDataXml.indexId}','${ppsA01ResultAreaDataXml.areaType}','${ppsA01ResultAreaDataXml.areaCd}','${ppsA01ResultAreaDataXml.multiCd}')">
					${ppsA01ResultAreaDataXml.dataDt}
				</a></td>
				<td>
					${ppsA01ResultAreaDataXml.reportName}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.indexId}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.areaType}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.areaCd}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.regOrgName}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.remarks}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.multiTenancyId}
				</td>
				<td>
					${ppsA01ResultAreaDataXml.multiCd}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>