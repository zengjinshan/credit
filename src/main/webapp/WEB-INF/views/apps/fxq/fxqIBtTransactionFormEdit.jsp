<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额交易补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIBtTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIBtTransaction" action="${ctx}/fxq/fxqIBtTransaction/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${fxqIBtTransaction.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">大额交易特征代码：</label>
					<div class="controls">
						<input type="hidden" id="hhTxFeaCd" name="hhTxFeaCd" value="${fxqIBtTransaction.hhTxFeaCd}"/>
						${fns:getDictLabels(fxqIBtTransaction.hhTxFeaCd, 'FXQ_HH_TX_FEA_CD', '')}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易ID：</label>
					<div class="controls">
						<form:input path="txId" htmlEscape="false" maxlength="50" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称：</label>
					<div class="controls">
						<form:input path="custName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户账号：</label>
					<div class="controls">
						<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls">
						<form:select path="acctType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_ACCT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">开户机构名称：</label>
					<div class="controls">
						<form:input path="openOrgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls">
						<form:input path="finOrgCd" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">金融机构行政区划代码：</label>
					<div class="controls">
						<form:input path="finOrgDistrictCd" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">金融机构代码类型说明：</label>
					<div class="controls">
						<form:input path="finOrgType" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">金融机构和大额交易的关系类型代码：</label>
					<div class="controls">
						<form:select path="finOrgRelation" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_FIN_ORG_RELATION')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易日期：</label>
					<div class="controls">
						<input id="txDt" name="txDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${fxqIBtTransaction.txDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易时间：</label>
					<div class="controls">
						<input id="txTm" name="txTm" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${fxqIBtTransaction.txTm}"
							onclick="WdatePicker({dateFmt:'HHmmss',isShowClear:false});"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种代码：</label>
					<div class="controls">
						<form:select path="currencyCd" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CURRENCY_CD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易金额：</label>
					<div class="controls">
						<form:input path="txAmt" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收付标志：</label>
					<div class="controls">
						<form:select path="receivePayInd" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_RECEIVE_PAY_IND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易机构名称：</label>
					<div class="controls">
						<form:input path="txOrgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务标识号：</label>
					<div class="controls">
						<form:input path="bizIdNum" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易方式：</label>
					<div class="controls">
						<form:input path="txMethod" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">涉外收支交易分类和代码：</label>
					<div class="controls">
						<form:select path="tsct" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_TSCT')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">资金用途：</label>
					<div class="controls">
						<form:input path="fundPurpose" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易发生地：</label>
					<div class="controls">
						<form:input path="txArea" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易方向：</label>
					<div class="controls">
						<form:input path="txDir" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手客户名称：</label>
					<div class="controls">
						<form:input path="cnterCustName" htmlEscape="false" maxlength="1000" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对手证件类型：</label>
					<div class="controls">
						<form:select path="cnterCertType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手证件号码：</label>
					<div class="controls">
						<form:input path="cnterCertNum" htmlEscape="false" maxlength="120" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对手客户账号：</label>
					<div class="controls">
						<form:input path="cnterCustAcctNum" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手账户类型：</label>
					<div class="controls">
						<form:select path="cnterAcctType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_ACCT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对手金融机构名称：</label>
					<div class="controls">
						<form:input path="cnterFinOrgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手金融机构代码网点类型：</label>
					<div class="controls">
						<form:select path="cnterFinOrgType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_FIN_ORG_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">校验信息：</label>
					<div class="controls">
						<input type="hidden" id="checkInfoTab" value="${fxqIBtTransaction.checkInfo}"/>
						<form:select path="checkInfo" class="input-large-select-edit " multiple="true">
							<form:options items="${fns:getDictList('FXQ_CHECK_INFO')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>

		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqIBtTransaction:modify"><button class="btn_public" type="button" onclick="fxqIBtTransactionForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>