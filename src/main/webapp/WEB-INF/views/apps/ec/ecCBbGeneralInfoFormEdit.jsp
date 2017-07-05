<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借款人概况信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbGeneralInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<ul id="ecCBbGeneralInfo" class="nav nav-tabs">
		<li class="active"><a href="#generalInfo">借款人概况信息</a></li>
		<li><a href="#financeLinkMode">财务部联系方式</a></li>
		<li><a href="#stockInfo">股票信息</a></li>
	</ul>
	<br/>
	<div class="tab-content">
		<!-- 借款人概况信息 -->
		<div id="generalInfo" class="tab-pane active">
			<form:form id="inputForm" modelAttribute="ecCBbGeneralInfo" action="${ctx}/ec/ecCBbGeneralInfo/update" method="post" class="form-horizontal">
				<sys:message content="${message}"/>		
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">客户编号：</label>
							<div class="controls">
								<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-large required" disabled="true"/>
								<span class="help-inline"><font color="red">*</font></span>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">业务发生日期：</label>
							<div class="controls">
								<input id="occurDate" name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
									value="${ecCBbGeneralInfo.occurDate}"
									onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
								<span class="help-inline"><font color="red">*</font></span>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">金融机构代码：</label>
							<div class="controls">
								<form:input path="financeCd" htmlEscape="false" maxlength="11" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">贷款卡编码：</label>
							<div class="controls">
								<form:input path="loanCardCd" htmlEscape="false" maxlength="16" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人国别：</label>
							<div class="controls">
								<form:select path="countryCode" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_BORROWER_COUNTRY')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">借款人中文名称：</label>
							<div class="controls">
								<form:input path="borrowerNameCn" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人外文名称：</label>
							<div class="controls">
								<form:input path="borrowerNameFn" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">组织机构代码：</label>
							<div class="controls">
								<form:input path="orgCode" htmlEscape="false" maxlength="10" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人成立年份：</label>
							<div class="controls">
								<form:input path="startDate" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">登记注册类型：</label>
							<div class="controls">
								<form:input path="registerType" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">登记注册号：</label>
							<div class="controls">
								<form:input path="registerNo" htmlEscape="false" maxlength="40" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">注册登记日期：</label>
							<div class="controls">
								<form:input path="registerDate" htmlEscape="false" maxlength="8" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">营业执照到期日期：</label>
							<div class="controls">
								<form:input path="licenseMatDate" htmlEscape="false" maxlength="8" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">国税登记证号码：</label>
							<div class="controls">
								<form:input path="nationalTaxRegisterNo" htmlEscape="false" maxlength="40" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">地税登记证号码：</label>
							<div class="controls">
								<form:input path="localTaxRegisterNo" htmlEscape="false" maxlength="40" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">借款人性质：</label>
							<div class="controls">
								<form:select path="borrowerType" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_BORROWER_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">行业分类：</label>
							<div class="controls">
								<form:input path="tradeSort" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">从业人数：</label>
							<div class="controls">
								<form:input path="employeeNum" htmlEscape="false" maxlength="8" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">行政区划：</label>
							<div class="controls">
								<form:input path="adminPlot" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">借款人特征：</label>
							<div class="controls">
								<form:input path="borrowerCharacter" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人联系电话：</label>
							<div class="controls">
								<form:input path="telNum" htmlEscape="false" maxlength="40" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">借款人注册地址：</label>
							<div class="controls">
								<form:input path="registerAddr" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人传真号码：</label>
							<div class="controls">
								<form:input path="faxNum" htmlEscape="false" maxlength="40" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">借款人Email地址：</label>
							<div class="controls">
								<form:input path="emailAddr" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人网址：</label>
							<div class="controls">
								<form:input path="web" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">借款人通讯地址：</label>
							<div class="controls">
								<form:input path="address" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">邮政编码：</label>
							<div class="controls">
								<form:input path="postCode" htmlEscape="false" maxlength="6" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">主要产品情况：</label>
							<div class="controls">
								<form:input path="productInfo" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">经营场地面积：</label>
							<div class="controls">
								<form:input path="manageArea" htmlEscape="false" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">经营场地所有权：</label>
							<div class="controls">
								<form:select path="manageOwnership" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_MANAGE_OWNERSHIP')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">集团客户标志：</label>
							<div class="controls">
								<form:select path="groupFlag" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_GROUP_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">进出口权标志：</label>
							<div class="controls">
								<form:select path="impExpPowerFlage" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_IMP_EXP_POWER_FLAGE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">上市公司标志：</label>
							<div class="controls">
								<form:select path="stockFlag" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_STOCK_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">信息记录操作类型：</label>
							<div class="controls">
								<form:select path="recordOpType" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_RECORD_OP_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">错误代码：</label>
							<div class="controls">
								<form:input path="errorCd" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">变更标示段值：</label>
							<div class="controls">
								<form:input path="changeValue" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">信息记录跟踪编号：</label>
							<div class="controls">
								<form:input path="recordOpCode" htmlEscape="false" maxlength="40" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">源机构代码：</label>
							<div class="controls">
								<form:input path="sourceOrgCd" htmlEscape="false" maxlength="9" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">上报标志：</label>
							<div class="controls">
								<form:input path="reportFlag" htmlEscape="false" maxlength="1" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">报文上报机构代码：</label>
							<div class="controls">
								<form:input path="reportOrgCd" htmlEscape="false" maxlength="9" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">入库状态：</label>
							<div class="controls">
								<form:input path="stockState" htmlEscape="false" maxlength="1" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">多实体标识：</label>
							<div class="controls">
								<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span11">
							<label class="control-label">备注信息：</label>
							<div class="controls">
								<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="2000" class="input-xxlarge "/>
							</div>
					 	</div>
					</div>
				</div>
				<div class="form-actions">
					<shiro:hasPermission name="ec:ecCBbGeneralInfo:modify"><button class="btn_public" type="button" onclick="ecCBbGeneralInfoForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
					<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
				</div>
			</form:form>
		</div>
			
		<!-- 财务部联系方式 -->
		<div id="financeLinkMode" class="tab-pane">
			<iframe id="ecCBbFinanceLinkMode" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
		
		<!-- 股票信息 -->
		<div id="stockInfo" class="tab-pane">
			<iframe id="ecCBbStockInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
		</div>
	</div>
</body>
</html>