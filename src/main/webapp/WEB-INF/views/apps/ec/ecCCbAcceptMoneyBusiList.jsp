<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-承兑汇票业务管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbAcceptMoneyBusiList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbAcceptMoneyBusi" action="${ctx}/ec/ecCCbAcceptMoneyBusi/list" method="post" class="search-form">
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
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbAcceptMoneyBusi.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>债项编号：</label>
						<div>
							<form:input path="loanNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>汇票号码：</label>
						<div>
							<form:input path="moneyOrderNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbAcceptMoneyBusi.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbAcceptMoneyBusi.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbAcceptMoneyBusiList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:add">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:modify">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:remove">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:submit">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.submitEcCCbAcceptMoneyBusi();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:via">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.viaEcCCbAcceptMoneyBusi();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:return">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.returnEcCCbAcceptMoneyBusi();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:export">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:import">
		<button class="btn_public" onclick="ecCCbAcceptMoneyBusiList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbAcceptMoneyBusi/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbAcceptMoneyBusi/importExcel" method="post" enctype="multipart/form-data"
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
				<th>债项编号</th>
				<th>金融机构代码</th>
				<th>承兑协议号码</th>
				<th>汇票号码</th>
				<th>授信协议号码</th>
				<th>信息记录操作类型</th>
				<th>信息记录跟踪编号</th>
				<th>出票人名称</th>
				<th>贷款卡编码</th>
				<th>币种</th>
				<th>汇票金额</th>
				<th>汇票承兑日</th>
				<th>汇票到期日</th>
				<th>汇票付款日期</th>
				<th>保证金比例</th>
				<th>担保标志</th>
				<th>垫款标志</th>
				<th>汇票状态</th>
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
		<c:forEach items="${page.list}" var="ecCCbAcceptMoneyBusi">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbAcceptMoneyBusi.occurDate}@_#${ecCCbAcceptMoneyBusi.loanNum}@_#${ecCCbAcceptMoneyBusi.regDataStatus}@_#${ecCCbAcceptMoneyBusi.regCheckStatus}@_#${ecCCbAcceptMoneyBusi.regSendStatus}@_#${ecCCbAcceptMoneyBusi.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbAcceptMoneyBusiList.formView('${ecCCbAcceptMoneyBusi.occurDate}','${ecCCbAcceptMoneyBusi.loanNum}')">
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.occurDate}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.loanNum}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.financeCd}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.acceptAgrNum}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.moneyOrderNum}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.creditAgrNo}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.recordOpType}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.recordTraceNo}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.remitterName}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.moneyOrderAmt}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.moneyOrderAcceptDate}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.moneyOrderEndDate}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.moneyOrderPayDate}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.securityMoneyPer}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.guarFlag, 'EC_GUAR_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.paybackFlag, 'EC_PAYBACK_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.moneyOrderStatus, 'EC_DRAFT_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbAcceptMoneyBusi.fiveCla, 'EC_FIVE_CLA', '')}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.errorCd}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.sourceOrgCd}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.changeValue}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.reportFlag}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.reportOrgCd}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.stockState}
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.regOrgName}
				</td>
				<td>
					<div title="${ecCCbAcceptMoneyBusi.remarks}" class="listTitle">
						${ecCCbAcceptMoneyBusi.remarks}
					</div>
				</td>
				<td>
					${ecCCbAcceptMoneyBusi.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>