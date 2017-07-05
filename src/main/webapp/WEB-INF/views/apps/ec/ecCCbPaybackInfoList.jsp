<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-垫款信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbPaybackInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCCbPaybackInfo" action="${ctx}/ec/ecCCbPaybackInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCCbPaybackInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>垫款业务号码：</label>
						<div>
							<form:input path="paybackTradeNum" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>原业务号：</label>
						<div>
							<form:input path="formerBusiNo" htmlEscape="false" maxlength="60" class="input-medium"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>还款方式：</label>
						<div>
							<form:select path="repayStyle" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_REPAY_STYLE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>四级分类：</label>
						<div>
							<form:select path="fourCla" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_FOUR_CLA')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>五级分类：</label>
						<div>
							<form:select path="fiveCla" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_FIVE_CLA')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCCbPaybackInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCCbPaybackInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
					<div class="span4"></div>
					<div class="span4"></div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCCbPaybackInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:add">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:modify">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:remove">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:submit">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.submitEcCCbPaybackInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:via">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.viaEcCCbPaybackInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:return">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.returnEcCCbPaybackInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:export">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCCbPaybackInfo:import">
		<button class="btn_public" onclick="ecCCbPaybackInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCCbPaybackInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCCbPaybackInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>垫款业务号码</th>
				<th>原业务号</th>
				<th>金融机构代码</th>
				<th>信息记录操作类型</th>
				<th>信息记录跟踪编号</th>
				<th>借款人名称</th>
				<th>贷款卡编码</th>
				<th>垫款种类</th>
				<th>币种</th>
				<th>垫款金额</th>
				<th>垫款日期</th>
				<th>垫款余额</th>
				<th>余额发生日期</th>
				<th>还款方式</th>
				<th>四级分类</th>
				<th>五级分类</th>
				<th>错误代码</th>
				<th>源机构代码</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>主合同编号</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCCbPaybackInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCCbPaybackInfo.occurDate}@_#${ecCCbPaybackInfo.paybackTradeNum}@_#${ecCCbPaybackInfo.formerBusiNo}@_#${ecCCbPaybackInfo.regDataStatus}@_#${ecCCbPaybackInfo.regCheckStatus}@_#${ecCCbPaybackInfo.regSendStatus}@_#${ecCCbPaybackInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCCbPaybackInfoList.formView('${ecCCbPaybackInfo.occurDate}','${ecCCbPaybackInfo.paybackTradeNum}','${ecCCbPaybackInfo.formerBusiNo}')">
					${fns:getDictLabels(ecCCbPaybackInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCCbPaybackInfo.occurDate}
				</td>
				<td>
					${ecCCbPaybackInfo.paybackTradeNum}
				</td>
				<td>
					${ecCCbPaybackInfo.formerBusiNo}
				</td>
				<td>
					${ecCCbPaybackInfo.financeCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCCbPaybackInfo.recordTraceNo}
				</td>
				<td>
					${ecCCbPaybackInfo.borrowerName}
				</td>
				<td>
					${ecCCbPaybackInfo.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.paybackType, 'EC_PAYBACK_TYPE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.currency, 'EC_CURRENCY', '')}
				</td>
				<td>
					${ecCCbPaybackInfo.paybackAmt}
				</td>
				<td>
					${ecCCbPaybackInfo.paybackDate}
				</td>
				<td>
					${ecCCbPaybackInfo.paybackBalance}
				</td>
				<td>
					${ecCCbPaybackInfo.balanceOccurDate}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.repayStyle, 'EC_REPAY_STYLE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.fourCla, 'EC_FOUR_CLA', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCCbPaybackInfo.fiveCla, 'EC_FIVE_CLA', '')}
				</td>
				<td>
					${ecCCbPaybackInfo.errorCd}
				</td>
				<td>
					${ecCCbPaybackInfo.sourceOrgCd}
				</td>
				<td>
					${ecCCbPaybackInfo.reportFlag}
				</td>
				<td>
					${ecCCbPaybackInfo.reportOrgCd}
				</td>
				<td>
					${ecCCbPaybackInfo.contractNum}
				</td>
				<td>
					${ecCCbPaybackInfo.stockState}
				</td>
				<td>
					${ecCCbPaybackInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCCbPaybackInfo.remarks}" class="listTitle">
						${ecCCbPaybackInfo.remarks}
					</div>
				</td>
				<td>
					${ecCCbPaybackInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>