<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>大额案例交易列表管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqLargeTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqLargeTransaction" action="${ctx}/fxq/fxqLargeTransaction/save" method="post" class="form-horizontal">
		<!--<form:hidden path="id"/>-->
		<sys:message content="${message}"/>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">数据日期：</label>
			<div class="controls">
				<form:input path="dataDt" htmlEscape="false" maxlength="8" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">客户编号：</label>
			<div class="controls">
				<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">大额交易特征代码：</label>
			<div class="controls">
				<form:select path="hhTxFeaCd" class="input-xlarge required">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_HH_TX_FEA_CD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易ID：</label>
			<div class="controls">
				<form:input path="txId" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">报告ID：</label>
			<div class="controls">
				<form:input path="reportId" htmlEscape="false" maxlength="50" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">客户名称：</label>
			<div class="controls">
				<form:input path="custName" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">客户账号：</label>
			<div class="controls">
				<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">账户类型：</label>
			<div class="controls">
				<form:input path="acctType" htmlEscape="false" maxlength="4" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">开户机构：</label>
			<div class="controls">
				<form:input path="openOrg" htmlEscape="false" maxlength="9" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">开户机构名称：</label>
			<div class="controls">
				<form:input path="openOrgName" htmlEscape="false" maxlength="256" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">金融机构代码：</label>
			<div class="controls">
				<form:input path="finOrgCd" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">金融机构名称：</label>
			<div class="controls">
				<form:input path="finOrgName" htmlEscape="false" maxlength="256" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">金融机构行政区划代码：</label>
			<div class="controls">
				<form:input path="finOrgDistrictCd" htmlEscape="false" maxlength="6" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">金融机构代码类型说明：</label>
			<div class="controls">
				<form:input path="finOrgType" htmlEscape="false" maxlength="60" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">金融机构和大额交易的关系类型代码：</label>
			<div class="controls">
				<form:select path="finOrgRelation" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_ORG_RELATION')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易日期：</label>
			<div class="controls">
				<form:input path="txDt" htmlEscape="false" maxlength="8" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易时间：</label>
			<div class="controls">
				<form:input path="txTm" htmlEscape="false" maxlength="6" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">报送业务条线：</label>
			<div class="controls">
				<form:input path="reportBizLine" htmlEscape="false" maxlength="3" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">币种代码：</label>
			<div class="controls">
				<form:select path="currencyCd" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_CURRENCY_CD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易金额：</label>
			<div class="controls">
				<form:input path="txAmt" htmlEscape="false" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">折人民币金额：</label>
			<div class="controls">
				<form:input path="txAmtRmb" htmlEscape="false" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">折美元金额：</label>
			<div class="controls">
				<form:input path="txAmtUsd" htmlEscape="false" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">收付标志：</label>
			<div class="controls">
				<form:select path="receivePayInd" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_RECEIVE_PAY_IND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易代码：</label>
			<div class="controls">
				<form:input path="txCd" htmlEscape="false" maxlength="9" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易机构：</label>
			<div class="controls">
				<form:input path="txOrg" htmlEscape="false" maxlength="9" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易机构名称：</label>
			<div class="controls">
				<form:input path="txOrgName" htmlEscape="false" maxlength="256" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">补录机构：</label>
			<div class="controls">
				<form:input path="agrOrg" htmlEscape="false" maxlength="9" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易柜员号：</label>
			<div class="controls">
				<form:input path="tellerNo" htmlEscape="false" maxlength="12" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易渠道种类：</label>
			<div class="controls">
				<form:input path="txChannelType" htmlEscape="false" maxlength="3" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">业务标识号：</label>
			<div class="controls">
				<form:input path="bizIdNum" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易方式：</label>
			<div class="controls">
				<form:select path="txMethod" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_TX_METHOD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">涉外收支交易分类和代码：</label>
			<div class="controls">
				<form:select path="tsct" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_TSCT')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">资金用途：</label>
			<div class="controls">
				<form:input path="fundPurpose" htmlEscape="false" maxlength="256" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易发生地：</label>
			<div class="controls">
				<form:select path="txArea" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_TX_AREA')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易方向：</label>
			<div class="controls">
				<form:select path="txDir" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_TX_DIR')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易对手客户名称：</label>
			<div class="controls">
				<form:input path="cnterCustName" htmlEscape="false" maxlength="1000" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易对手证件类型：</label>
			<div class="controls">
				<form:select path="cnterCertType" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_CNTER_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易对手证件类型说明：</label>
			<div class="controls">
				<form:input path="cnterCertTypeDesc" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易对手证件号码：</label>
			<div class="controls">
				<form:input path="cnterCertNum" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易对手客户账号：</label>
			<div class="controls">
				<form:input path="cnterCustAcctNum" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易对手账户类型：</label>
			<div class="controls">
				<form:input path="cnterAcctType" htmlEscape="false" maxlength="4" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易对手金融机构代码：</label>
			<div class="controls">
				<form:input path="cnterFinOrgCd" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易对手金融机构名称：</label>
			<div class="controls">
				<form:input path="cnterFinOrgName" htmlEscape="false" maxlength="256" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">交易对手金融机构行政区划：</label>
			<div class="controls">
				<form:input path="cnterFinOrgDistrictCd" htmlEscape="false" maxlength="12" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">交易对手金融机构代码网点类型：</label>
			<div class="controls">
				<form:select path="cnterFinOrgType" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_CNTER_FIN_ORG_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">代理人姓名：</label>
			<div class="controls">
				<form:input path="agentName" htmlEscape="false" maxlength="60" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">代理人证件类型：</label>
			<div class="controls">
				<form:select path="agentCertType" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('FXQ_AGENT_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">代理人证件类型说明：</label>
			<div class="controls">
				<form:input path="agentCertTypeDesc" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">代理人证件号码：</label>
			<div class="controls">
				<form:input path="agentCertNum" htmlEscape="false" maxlength="120" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">代理人国籍代码：</label>
			<div class="controls">
				<form:input path="agentNation" htmlEscape="false" maxlength="3" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
				<div class="control-group">
				<div class="container-fluid">
		 		<div class="span6">
			<label class="control-label">校验信息：</label>
			<div class="controls">
				<form:input path="checkInfo" htmlEscape="false" maxlength="3000" class="input-xlarge "/>
			</div>
			 	</div>
		 		<div class="span6">	 
			<label class="control-label">校验符号：</label>
			<div class="controls">
				<form:input path="checkField" htmlEscape="false" maxlength="5" class="input-xlarge "/>
			</div>
				</div>
				</div>
				</div>
		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqLargeTransaction:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>