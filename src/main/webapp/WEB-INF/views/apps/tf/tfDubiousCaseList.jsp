<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>电信可疑案例管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfDubiousCaseList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="tfDubiousCase" action="${ctx}/tf/tfDubiousCase/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<%-- <div>
				
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
				 --%>
				<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${tfDubiousCase.dataDt}"
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
						<label>客户名称：</label>
						<div>
							<form:input path="custName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>可疑交易特征：</label>
						<div>
							<form:select path="stcr" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_STCR')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>电信诈骗特征：</label>
						<div>
							<form:select path="tfStcr" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_TF_STCR')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				
					<div class="span4">
						<label>报送机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${tfDubiousCase.regOrgNo}" labelName="regOrgName" labelValue="${tfDubiousCase.regOrgName}"
								title="部门" url="/sys/office/treeData?type=2" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="tfDubiousCaseList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public"  type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
		<shiro:hasPermission name="tf:tfDubiousCase:exclude">
		<button class="btn_public" onclick="tfDubiousCaseList.exclude();"><i class="icon button_delete"></i>排除</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="tf:tfDubiousCase:submit">
		<button class="btn_public" onclick="tfDubiousCaseList.submit();"><i class="icon button_add"></i>提交</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="tf:tfDubiousCase:advise">
		<button class="btn_public" onclick="tfDubiousCaseList.advise();"><i class="icon button_add"></i>意见</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="tf:tfDubiousCase:back">
		<button class="btn_public" onclick="tfDubiousCaseList.back();"><i class="icon button_back"></i>退回</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="tf:tfDubiousCase:pass">
		<button class="btn_public" onclick="tfDubiousCaseList.pass();"><i class="icon button_add"></i>通过</button>
		</shiro:hasPermission>
		
		<button class="btn_public" onclick="tfDubiousCaseList.showTransaction();"><i class="icon button_search"></i>查看交易</button>
		<button class="btn_public" onclick="tfDubiousCaseList.viewXml();"><i class="icon button_search"></i>预览</button>
	<%-- <!-- 编辑按钮权限 -->
	<shiro:hasPermission name="tf:tfDubiousCase:edit">
		<button class="btn_public" onclick="tfDubiousCaseList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="tfDubiousCaseList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="tfDubiousCaseList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="tf:tfDubiousCase:export">
		<button class="btn_public" onclick="tfDubiousCaseList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="tf:tfDubiousCase:import">
		<button class="btn_public" onclick="tfDubiousCaseList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/tf/tfDubiousCase/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/tf/tfDubiousCase/importExcel" method="post" enctype="multipart/form-data"
				class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
				<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
				<button id="btnImportSubmit" class="btn_public" type="submit"><i class="icon button_import"></i>导入</button>
			</form>
		</div>
	</shiro:hasPermission> --%>
	</div>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据日期</th>
				<th>案例编号</th>
				<th>客户名称</th>
				<th>客户编号</th>
				<th>可疑交易特征</th>
				<th>电信诈骗特征</th>
				<th>报送机构</th>
				<th>报送期限</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tfDubiousCase">
			<tr onclick="checkLine(this);" style="color: ${tfDubiousCase.color}">
				<td><input type="checkbox" id="${tfDubiousCase.dataDt}_${tfDubiousCase.custNo}_${tfDubiousCase.regDataStatus}_${tfDubiousCase.regCheckStatus}_${tfDubiousCase.regSendStatus}_${tfDubiousCase.regOperateStatus}"></td>
				<td>
					${tfDubiousCase.dataDt}
				</td>
				<td>
					${tfDubiousCase.caseNo}
				</td>
					<td>
					${tfDubiousCase.custName}
				</td>
				<td>
					${tfDubiousCase.custNo}
				</td>
				<td>
					<div title="${fns:getDictLabel(tfDubiousCase.stcr, 'FXQ_STCR', '')}" class="listTitle">
						${fns:getDictLabel(tfDubiousCase.stcr, 'FXQ_STCR', '')}
					</div>
				</td>
				<td>
					<div title="${fns:getDictLabel(tfDubiousCase.tfStcr, 'FXQ_TF_STCR', '')}" class="listTitle">
						${fns:getDictLabel(tfDubiousCase.tfStcr, 'FXQ_TF_STCR', '')}
					</div>
				</td>			
				<td>
					${tfDubiousCase.regOrgName}
				</td>
				<td>
					${tfDubiousCase.periodValue}
				</td>
				<td>
					${fns:getDictLabel(tfDubiousCase.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(tfDubiousCase.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(tfDubiousCase.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>