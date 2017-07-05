<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额案例管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqLargeCaseList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="fxqLargeCase" action="${ctx}/fxq/fxqLargeCase/list" method="post" class="search-form">
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
						<label>操作状态：</label>
						<div>
							<form:select path="regOperateStatus" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('REG_OPERATE_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div> 
				
					<%-- <div class="span4">
						<label>报送期限：</label>
						<div>
							<input name="periodValue" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqLargeCase.periodValue}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div> --%>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${fxqLargeCase.dataDt}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
				
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-medium"/>
						</div>
					</div>
					</div>
				<div>
					<div class="span4">
						<label>客户名称：</label>
						<div>
							<form:input path="custName" htmlEscape="false" maxlength="64" class="input-medium"/>
						</div>
					</div>
			
					<div class="span4">
						<label>大额交易特征码：</label>
						<div>
							<form:select path="hhTxFeaCd" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_HH_TX_FEA_CD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				
					<div class="span4">
						<label>报送机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${fxqLargeCase.regOrgNo}" labelName="regOrgName" labelValue="${fxqLargeCase.regOrgName}"
								title="部门" url="/sys/office/treeData?type=2" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="fxqLargeCaseList.query();"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="button" onclick="formClear('searchForm');"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<div class="button_table">
		<shiro:hasPermission name="fxq:fxqLargeCase:exclude">
		<button class="btn_public" onclick="fxqLargeCaseList.exclude();"><i class="icon button_delete"></i>排除</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="fxq:fxqLargeCase:submit">
		<button class="btn_public" onclick="fxqLargeCaseList.submit();"><i class="icon button_add"></i>提交</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="fxq:fxqLargeCase:back">
		<button class="btn_public" onclick="fxqLargeCaseList.back();"><i class="icon button_back"></i>退回</button>
		</shiro:hasPermission>		
		<shiro:hasPermission name="fxq:fxqLargeCase:pass">
		<button class="btn_public" onclick="fxqLargeCaseList.pass();"><i class="icon button_add"></i>通过</button>
		</shiro:hasPermission>
		
		<button class="btn_public" onclick="fxqLargeCaseList.showTransaction();"><i class="icon button_search"></i>查看交易</button>
		<button class="btn_public" onclick="fxqLargeCaseList.viewXml();"><i class="icon button_search"></i>预览</button>
	<!-- 编辑按钮权限 -->
<%-- 	<shiro:hasPermission name="fxq:fxqLargeCase:edit">
		<button class="btn_public" onclick="fxqLargeCaseList.add();"><i class="icon button_add"></i>新增</button>
		<button class="btn_public" onclick="fxqLargeCaseList.modify();"><i class="icon button_modify"></i>修改</button>
		<button class="btn_public" onclick="fxqLargeCaseList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="fxq:fxqLargeCase:export">
		<button class="btn_public" onclick="fxqLargeCaseList.exportExcel();"><i class="icon button_export"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="fxq:fxqLargeCase:import">
		<button class="btn_public" onclick="fxqLargeCaseList.importExcel();"><i class="icon button_import"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_export"></i>
			<a href="${ctx}/fxq/fxqLargeCase/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/fxq/fxqLargeCase/importExcel" method="post" enctype="multipart/form-data"
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
				<th>大额交易特征代码</th>
				<th>报送机构(业务所属机构名称)</th>
				<!-- <th>证件类型代码</th>
				<th>证件类型说明</th>
				<th>证件号码</th>
				<th>国籍代码</th>
				<th>客户类型代码</th>
				<th>校验符号</th>
				<th>校验信息</th>
				<th>备注信息</th> -->
				<th>报送期限</th>
				<th>数据状态</th>
				<th>校验状态</th>
				<th>报送状态</th>
				<!-- <th>操作状态</th> -->
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fxqLargeCase">
			<tr onclick="checkLine(this);" style="color: ${fxqLargeCase.color}">
				<td>
				<input type="checkbox" id="${fxqLargeCase.dataDt}_${fxqLargeCase.custNo}_${fxqLargeCase.hhTxFeaCd}_${fxqLargeCase.regDataStatus}_${fxqLargeCase.checkState}_${fxqLargeCase.regSendStatus}_${fxqLargeCase.regOperateStatus}"></td>
				<td>
					${fxqLargeCase.dataDt}
				</td>
				<td>
					${fxqLargeCase.caseNo}
				</td>
				<td>
					${fxqLargeCase.custName}
				</td>
				<td>
					${fxqLargeCase.custNo}
				</td>
				<td>
					<div title="${fns:getDictLabel(fxqLargeCase.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}" class="listTitle">
						${fns:getDictLabel(fxqLargeCase.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}
					</div>
				</td>
				<td>
					${fxqLargeCase.regOrgName}
				</td>
				<%-- <td>
					${fns:getDictLabel(fxqLargeCase.certType, 'FXQ_CERT_TYPE', '')}
				</td>
				<td>
					${fxqLargeCase.certDesc}
				</td>
				<td>
					${fxqLargeCase.certNum}
				</td>
				<td>
					${fns:getDictLabel(fxqLargeCase.natising2, 'FXQ_NATISING2', '')}
				</td>
				<td>
					${fxqLargeCase.custInd}
				</td>
				<td>
					${fxqLargeCase.checkField}
				</td>
				<td>
					${fxqLargeCase.checkInfo}
				</td>
				<td>
					${fxqLargeCase.remarks}
				</td> --%>
				<td>
					${fxqLargeCase.periodValue}
				</td>
				<td >
					${fns:getDictLabel(fxqLargeCase.regDataStatus, 'REG_DATA_STATUS', '')}
				</td>
			<%-- 	<td>
					${fns:getDictLabel(fxqLargeCase.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td> --%>
				<td>
					${fns:getDictLabel(fxqLargeCase.checkState, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabel(fxqLargeCase.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td  style="display: none;">
					${fns:getDictLabel(fxqLargeCase.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>