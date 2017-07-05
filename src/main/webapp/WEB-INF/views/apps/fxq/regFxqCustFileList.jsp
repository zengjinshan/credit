<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>反洗钱报文登记表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/regFxqCustFileList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="regFxqCustFile" action="${ctx}/fxq/regFxqCustFile/" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
					<div>
					<div class="span4">
						<label>数据日期：</label>
						<div>
							<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${regFxqCustFile.dataDt}"
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
						<label>报告类型：</label>
						<div>
							<form:select path="custType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('FXQ_CUST_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
					<div>
					<div class="span4">
						<label>报告机构编码：</label>
						<div>
							<form:input path="reportOrgCode" htmlEscape="false" maxlength="15" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>报送日期：</label>
						<div>
							<input name="sendDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${regFxqCustFile.sendDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="submit"><i class="icon button_search"></i>查询</button>
					<button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- 消息提示 -->
	<sys:message content="${message}"/>
	<!-- 操作按钮 -->
	<shiro:hasPermission name="fxq:regFxqCustFile:edit">
		<div class="button_table">
			<button class="btn_public" onclick="regFxqCustFileList.add();"><i class="icon button_add"></i>新增</button>
			<button class="btn_public" onclick="regFxqCustFileList.modify();"><i class="icon button_modify"></i>修改</button>
			<button class="btn_public" onclick="regFxqCustFileList.remove();"><i class="icon button_delete"></i>删除</button>
		</div>
	</shiro:hasPermission>
	<!-- 列表展示 -->
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>数据日期</th>
				<th>客户编号</th>
				<th>报告类型</th>
				<th>报告机构编码</th>
				<th>报送日期</th>
				<th>文件批次</th>
				<th>文件序号</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>备注信息</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="regFxqCustFile">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${regFxqCustFile.id}"></td>
				<td><a href="${ctx}/fxq/regFxqCustFile/form?id=${regFxqCustFile.id}">
					${regFxqCustFile.dataDt}
				</a></td>
				<td>
					${regFxqCustFile.custNo}
				</td>
				<td>
					${fns:getDictLabel(regFxqCustFile.custType, 'FXQ_CUST_TYPE', '')}
				</td>
				<td>
					${regFxqCustFile.reportOrgCode}
				</td>
				<td>
					${regFxqCustFile.sendDate}
				</td>
				<td>
					${regFxqCustFile.fileBatch}
				</td>
				<td>
					${regFxqCustFile.fileNum}
				</td>
				<td>
					${regFxqCustFile.createBy.name}
				</td>
				<td>
					<fmt:formatDate value="${regFxqCustFile.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${regFxqCustFile.remarks}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>