<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑交易补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfIStTransactionForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tfIStTransaction" action="${ctx}/tf/tfIStTransaction/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input id="dataDt" name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${tfIStTransaction.dataDt}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户账号：</label>
					<div class="controls">
						<form:input path="custAcctNum" htmlEscape="false" maxlength="32" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易ID：</label>
					<div class="controls">
						<form:input path="txId" htmlEscape="false" maxlength="20" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易日期：</label>
					<div class="controls">
						<form:input path="txDt" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易时间：</label>
					<div class="controls">
						<form:input path="txTm" htmlEscape="false" maxlength="6" class="input-large "/>
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
					<label class="control-label">对公对私标志：</label>
					<div class="controls">
						<form:input path="custInd" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户类型：</label>
					<div class="controls">
						<form:input path="acctType" htmlEscape="false" maxlength="4" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">业务种类：</label>
					<div class="controls">
						<form:input path="bizType" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">涉及业务类型代码：</label>
					<div class="controls">
						<form:input path="bizTypeCd" htmlEscape="false" maxlength="25" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">系统账户：</label>
					<div class="controls">
						<form:input path="accountNum" htmlEscape="false" maxlength="200" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户开户时间：</label>
					<div class="controls">
						<form:input path="openDt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">账户销户时间：</label>
					<div class="controls">
						<form:input path="closeDt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人姓名：</label>
					<div class="controls">
						<form:input path="agentName" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">代办人证件类型说明：</label>
					<div class="controls">
						<form:input path="agentCertTypeDesc" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人身份证件证明文件类型：</label>
					<div class="controls">
						<form:select path="agentCertType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">代办人身份证件证明文件号码：</label>
					<div class="controls">
						<form:input path="agentCertNum" htmlEscape="false" maxlength="18" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">代办人国籍：</label>
					<div class="controls">
						<form:select path="agentNation" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_NATISING2')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">业务标示号：</label>
					<div class="controls">
						<form:input path="bizIdNum" htmlEscape="false" maxlength="64" class="input-large "/>
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
					<label class="control-label">交易代码：</label>
					<div class="controls">
						<form:input path="txCd" htmlEscape="false" maxlength="9" class="input-large "/>
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
					<label class="control-label">交易发生地：</label>
					<div class="controls">
						<form:input path="txArea" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易渠道：</label>
					<div class="controls">
						<form:input path="txChannelType" htmlEscape="false" maxlength="3" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易方向：</label>
					<div class="controls">
						<form:input path="txDir" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">资金收付标志：</label>
					<div class="controls">
						<form:select path="receivePayInd" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_RECEIVE_PAY_IND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资金来源和用途：</label>
					<div class="controls">
						<form:input path="fundPurpose" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">涉外收支交易分类与代码：</label>
					<div class="controls">
						<form:select path="tsct" class="input-large ">
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
					<label class="control-label">对方金融机构网点名称：</label>
					<div class="controls">
						<form:input path="cnterFinOrgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对方金融机构网点代码类型：</label>
					<div class="controls">
						<form:select path="cnterFinOrgType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_FIN_ORG_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对方金融机构网点代码：</label>
					<div class="controls">
						<form:input path="cnterFinOrgCd" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对方金融机构网点行政区划代码：</label>
					<div class="controls">
						<form:input path="cnterFinOrgDistrictCd" htmlEscape="false" maxlength="12" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易对手姓名名称：</label>
					<div class="controls">
						<form:input path="cnterCustName" htmlEscape="false" maxlength="600" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对手身份证件证明文件类型：</label>
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
					<label class="control-label">交易对手证件类型说明：</label>
					<div class="controls">
						<form:input path="cnterCertTypeDesc" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易对手身份证件证明文件号码：</label>
					<div class="controls">
						<form:input path="cnterCertNum" htmlEscape="false" maxlength="32" class="input-large "/>
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
					<label class="control-label">折合美元的交易金额：</label>
					<div class="controls">
						<form:input path="txAmtUsd" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">折合人民币的交易金额：</label>
					<div class="controls">
						<form:input path="txAmtRmb" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报送业务条线：</label>
					<div class="controls">
						<form:input path="reportBizLine" htmlEscape="false" maxlength="3" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">电信诈骗机构：</label>
					<div class="controls">
						<form:input path="tfOrg" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构代码：</label>
					<div class="controls">
						<form:input path="openOrg" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">开户机构名称：</label>
					<div class="controls">
						<form:input path="openOrgName" htmlEscape="false" maxlength="240" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户机构行政区划：</label>
					<div class="controls">
						<form:input path="openOrgDistrictCd" htmlEscape="false" maxlength="12" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">交易机构代码：</label>
					<div class="controls">
						<form:input path="txOrg" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易机构名称：</label>
					<div class="controls">
						<form:input path="txOrgName" htmlEscape="false" maxlength="256" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">补录机构：</label>
					<div class="controls">
						<form:input path="agrOrg" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">建行模型编号：</label>
					<div class="controls">
						<form:input path="ccbStcr" htmlEscape="false" maxlength="600" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">终端信息：</label>
					<div class="controls">
						<form:input path="terminalInfo" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls">
						<form:input path="modiInfo" htmlEscape="false" maxlength="3000" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">校验符：</label>
					<div class="controls">
						<form:input path="checkField" htmlEscape="false" maxlength="5" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">柜员号：</label>
					<div class="controls">
						<form:input path="tellerNo" htmlEscape="false" maxlength="12" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">报送标志：</label>
					<div class="controls">
						<form:input path="rptFlag" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
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
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="tf:tfIStTransaction:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>