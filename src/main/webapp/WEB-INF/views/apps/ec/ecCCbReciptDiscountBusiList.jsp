<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-票据贴现业务管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbReciptDiscountBusiList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbReciptDiscountBusi" action="${ctx}/ec/ecCCbReciptDiscountBusi/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbReciptDiscountBusi.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>票据内部编号：</label>
						<div>
							<form:input path="reciptInNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>票据种类：</label>
						<div>
							<form:select path="reciptStyle" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_RECIPT_STYLE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbReciptDiscountBusi.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbReciptDiscountBusi.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbReciptDiscountBusiList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:add">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:modify">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:remove">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:submit">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.submitEcCCbReciptDiscountBusi();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:via">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.viaEcCCbReciptDiscountBusi();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:return">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.returnEcCCbReciptDiscountBusi();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:export">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:import">
		<button class="btn_public" onclick="ecCCbReciptDiscountBusiList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbReciptDiscountBusi/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbReciptDiscountBusi/importExcel" method="post" enctype="multipart/form-data"
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
				<th>票据内部编号</th>
				<th>金融机构代码</th>
				<th>授信协议号码</th>
				<th>信息记录操作类型</th>
				<th>信息记录跟踪编号</th>
				<th>票据种类</th>
				<th>贴现申请人名称</th>
				<th>贷款卡编码</th>
				<th>承兑人/行名称</th>
				<th>贷款卡编码2</th>
				<th>组织机构代码</th>
				<th>币种</th>
				<th>贴现金额</th>
				<th>贴现日</th>
				<th>承兑到期日</th>
				<th>票面金额</th>
				<th>票据状态</th>
				<th>四级分类</th>
				<th>五级分类</th>
				<th>错误代码</th>
				<th>源机构代码</th>
				<th>变更标示段值</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbReciptDiscountBusi">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbReciptDiscountBusi.occurDate}@_#${ecCCbReciptDiscountBusi.reciptInNo}@_#${ecCCbReciptDiscountBusi.regDataStatus}@_#${ecCCbReciptDiscountBusi.regCheckStatus}@_#${ecCCbReciptDiscountBusi.regSendStatus}@_#${ecCCbReciptDiscountBusi.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbReciptDiscountBusiList.formView('${ecCCbReciptDiscountBusi.occurDate}','${ecCCbReciptDiscountBusi.reciptInNo}')">
					${fns:getDictLabels(ecCCbReciptDiscountBusi.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbReciptDiscountBusi.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbReciptDiscountBusi.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbReciptDiscountBusi.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.occurDate}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.reciptInNo}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.financeCd}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.creditAgrNo}
				</td>
				<td>
					${fns:getDictLabels(ecCCbReciptDiscountBusi.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.recordTraceNo}
				</td>
				<td>
					${fns:getDictLabels(ecCCbReciptDiscountBusi.reciptStyle, 'EC_RECIPT_STYLE', '')}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.discountApplyName}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.loanCardCd}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.acceptor}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.loanCardCd2}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.orgCode}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.currency}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.discountAmt}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.discountDate}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.acceptDeadline}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.parAmt}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.billStatus}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.fourCla}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.fiveCla}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.errorCd}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.sourceOrgCd}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.changeValue}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.reportFlag}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.reportOrgCd}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.stockState}
				</td>
				<td>
					${ecCCbReciptDiscountBusi.regOrgName}
				</td>
				<td>
					<div title="${ecCCbReciptDiscountBusi.remarks}" class="listTitle">
						${ecCCbReciptDiscountBusi.remarks}
					</div>
				</td>
				<td>
					${ecCCbReciptDiscountBusi.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>