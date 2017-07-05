<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借款人概况信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbGeneralInfoList.js" type="text/javascript"></script>
</head>
<body>
	<!-- 查询条件 -->
	<div id="accordion">
		<h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
		<div class="row-fluid show-grid">
			<form:form id="searchForm" modelAttribute="ecCBbGeneralInfo" action="${ctx}/ec/ecCBbGeneralInfo/list" method="post" class="search-form">
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<div>
					<div class="span4">
						<label>客户编号：</label>
						<div>
							<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>业务发生日期：</label>
						<div>
							<input name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate-reg-list"
								value="${ecCBbGeneralInfo.occurDate}"
								onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						</div>
					</div>
					<div class="span4">
						<label>借款人国别：</label>
						<div>
							<form:select path="countryCode" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_BORROWER_COUNTRY')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
				</div>
				<div>
					<div class="span4">
						<label>借款人中文名称：</label>
						<div>
							<form:input path="borrowerNameCn" htmlEscape="false" maxlength="100" class="input-medium"/>
						</div>
					</div>
					<div class="span4">
						<label>借款人性质：</label>
						<div>
							<form:select path="borrowerType" class="input-medium">
								<form:option value="" label=""/>
								<form:options items="${fns:getDictList('EC_BORROWER_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
							</form:select>
						</div>
					</div>
					<div class="span4">
						<label>业务所属机构：</label>
						<div class="treeselect-reg-list-div">
							<sys:treeselect id="regOrgNo" name="regOrgNo" value="${ecCBbGeneralInfo.regOrgNo}" labelName="regOrgName" labelValue="${ecCBbGeneralInfo.regOrgName}"
								title="部门" url="/sys/office/treeData?type=1" cssClass="treeselect-reg-list" allowClear="true" notAllowSelectParent="false"/>
						</div>
					</div>
				</div>
				<div class="button_table_center">
					<button class="btn_public" type="button" onclick="ecCBbGeneralInfoList.query();"><i class="icon button_search"></i>查询</button>
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
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:add">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.add();"><i class="icon button_add"></i>新增</button>
	</shiro:hasPermission>
	<!-- 修改按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:modify">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.modify();"><i class="icon button_modify"></i>修改</button>
	</shiro:hasPermission>
	<!-- 删除按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:remove">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.remove();"><i class="icon button_delete"></i>删除</button>
	</shiro:hasPermission>
	<!-- 提交按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:submit">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.submitEcCBbGeneralInfo();"><i class="icon button_see"></i>提交</button>
	</shiro:hasPermission>
	<!-- 通过按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:via">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.viaEcCBbGeneralInfo();"><i class="icon button_submit"></i>通过</button>
	</shiro:hasPermission>
	<!-- 退回按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:return">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.returnEcCBbGeneralInfo();"><i class="icon button_export"></i>退回</button>
	</shiro:hasPermission>
	<!-- 导出按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:export">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.exportExcel();"><i class="icon button_download"></i>导出</button>
	</shiro:hasPermission>
	<!-- 导入按钮权限 -->
	<shiro:hasPermission name="ec:ecCBbGeneralInfo:import">
		<button class="btn_public" onclick="ecCBbGeneralInfoList.importExcel();"><i class="icon button_upload"></i>导入</button>
		<button class="btn_public">
			<i class="icon button_upload"></i>
			<a href="${ctx}/ec/ecCBbGeneralInfo/downExcelTemplate">
				<font color = white>下载Excel模板</font>
			</a>
		</button>
		<!-- 导入选择文件界面 -->
		<div id="importBox" class="hide">
			<form id="importForm" action="${ctx}/ec/ecCBbGeneralInfo/importExcel" method="post" enctype="multipart/form-data"
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
				<th>客户编号</th>
				<th>业务发生日期</th>
				<th>金融机构代码</th>
				<th>贷款卡编码</th>
				<th>借款人国别</th>
				<th>借款人中文名称</th>
				<th>借款人外文名称</th>
				<th>组织机构代码</th>
				<th>借款人成立年份</th>
				<th>登记注册类型</th>
				<th>登记注册号</th>
				<th>注册登记日期</th>
				<th>营业执照到期日期</th>
				<th>国税登记证号码</th>
				<th>地税登记证号码</th>
				<th>借款人性质</th>
				<th>行业分类</th>
				<th>从业人数</th>
				<th>行政区划</th>
				<th>借款人特征</th>
				<th>借款人联系电话</th>
				<th>借款人注册地址</th>
				<th>借款人传真号码</th>
				<th>借款人Email地址</th>
				<th>借款人网址</th>
				<th>借款人通讯地址</th>
				<th>邮政编码</th>
				<th>主要产品情况</th>
				<th>经营场地面积</th>
				<th>经营场地所有权</th>
				<th>集团客户标志</th>
				<th>进出口权标志</th>
				<th>上市公司标志</th>
				<th>信息记录操作类型</th>
				<th>错误代码</th>
				<th>变更标示段值</th>
				<th>信息记录跟踪编号</th>
				<th>源机构代码</th>
				<th>上报标志</th>
				<th>报文上报机构代码</th>
				<th>入库状态</th>
				<th>业务所属机构</th>
				<th>备注信息</th>
				<th>多实体标识</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ecCBbGeneralInfo">
			<tr onclick="checkLine(this);">
				<td><input type="checkbox" id="${ecCBbGeneralInfo.customerNo}@_#${ecCBbGeneralInfo.regDataStatus}@_#${ecCBbGeneralInfo.regCheckStatus}@_#${ecCBbGeneralInfo.regSendStatus}@_#${ecCBbGeneralInfo.regOperateStatus}"></td>
				<td><a href="#" onclick="ecCBbGeneralInfoList.formView('${ecCBbGeneralInfo.customerNo}')">
					${fns:getDictLabels(ecCBbGeneralInfo.regDataStatus, 'REG_DATA_STATUS', '')}
				</a></td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.regCheckStatus, 'REG_CHECK_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.regSendStatus, 'REG_SEND_STATUS', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.regOperateStatus, 'REG_OPERATE_STATUS', '')}
				</td>
				<td>
					${ecCBbGeneralInfo.customerNo}
				</td>
				<td>
					${ecCBbGeneralInfo.occurDate}
				</td>
				<td>
					${ecCBbGeneralInfo.financeCd}
				</td>
				<td>
					${ecCBbGeneralInfo.loanCardCd}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.countryCode, 'EC_BORROWER_COUNTRY', '')}
				</td>
				<td>
					${ecCBbGeneralInfo.borrowerNameCn}
				</td>
				<td>
					${ecCBbGeneralInfo.borrowerNameFn}
				</td>
				<td>
					${ecCBbGeneralInfo.orgCode}
				</td>
				<td>
					${ecCBbGeneralInfo.startDate}
				</td>
				<td>
					${ecCBbGeneralInfo.registerType}
				</td>
				<td>
					${ecCBbGeneralInfo.registerNo}
				</td>
				<td>
					${ecCBbGeneralInfo.registerDate}
				</td>
				<td>
					${ecCBbGeneralInfo.licenseMatDate}
				</td>
				<td>
					${ecCBbGeneralInfo.nationalTaxRegisterNo}
				</td>
				<td>
					${ecCBbGeneralInfo.localTaxRegisterNo}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.borrowerType, 'EC_BORROWER_TYPE', '')}
				</td>
				<td>
					${ecCBbGeneralInfo.tradeSort}
				</td>
				<td>
					${ecCBbGeneralInfo.employeeNum}
				</td>
				<td>
					${ecCBbGeneralInfo.adminPlot}
				</td>
				<td>
					${ecCBbGeneralInfo.borrowerCharacter}
				</td>
				<td>
					${ecCBbGeneralInfo.telNum}
				</td>
				<td>
					${ecCBbGeneralInfo.registerAddr}
				</td>
				<td>
					${ecCBbGeneralInfo.faxNum}
				</td>
				<td>
					${ecCBbGeneralInfo.emailAddr}
				</td>
				<td>
					${ecCBbGeneralInfo.web}
				</td>
				<td>
					${ecCBbGeneralInfo.address}
				</td>
				<td>
					${ecCBbGeneralInfo.postCode}
				</td>
				<td>
					${ecCBbGeneralInfo.productInfo}
				</td>
				<td>
					${ecCBbGeneralInfo.manageArea}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.manageOwnership, 'EC_MANAGE_OWNERSHIP', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.groupFlag, 'EC_GROUP_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.impExpPowerFlage, 'EC_IMP_EXP_POWER_FLAGE', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.stockFlag, 'EC_STOCK_FLAG', '')}
				</td>
				<td>
					${fns:getDictLabels(ecCBbGeneralInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
				</td>
				<td>
					${ecCBbGeneralInfo.errorCd}
				</td>
				<td>
					${ecCBbGeneralInfo.changeValue}
				</td>
				<td>
					${ecCBbGeneralInfo.recordOpCode}
				</td>
				<td>
					${ecCBbGeneralInfo.sourceOrgCd}
				</td>
				<td>
					${ecCBbGeneralInfo.reportFlag}
				</td>
				<td>
					${ecCBbGeneralInfo.reportOrgCd}
				</td>
				<td>
					${ecCBbGeneralInfo.stockState}
				</td>
				<td>
					${ecCBbGeneralInfo.regOrgName}
				</td>
				<td>
					<div title="${ecCBbGeneralInfo.remarks}" class="listTitle">
						${ecCBbGeneralInfo.remarks}
					</div>
				</td>
				<td>
					${ecCBbGeneralInfo.multiTenancyId}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>