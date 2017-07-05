<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借据信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbDuebillInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbDuebillInfo" action="${ctx}/ec/ecCCbDuebillInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls">
						<input id="occurDate" name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${ecCCbDuebillInfo.occurDate}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">借据编号：</label>
					<div class="controls">
						<form:input path="duebillNo" htmlEscape="false" maxlength="60" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls">
						<form:select path="currency" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_CURRENCY')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贷款借据金额：</label>
					<div class="controls">
						<form:input path="loanDuebillAmt" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款借据余额：</label>
					<div class="controls">
						<form:input path="loanDuebillBalance" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">借据放款日期：</label>
					<div class="controls">
						<form:input path="duebillOutDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">借据放款到期日：</label>
					<div class="controls">
						<form:input path="duebillMatureDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贷款业务种类：</label>
					<div class="controls">
						<form:select path="loanBusiType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_LOAN_BUSI_TYPE1')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款形式：</label>
					<div class="controls">
						<form:select path="loanType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_LOAN_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贷款性质：</label>
					<div class="controls">
						<form:select path="loanChar" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_LOAN_CHAR')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款投向：</label>
					<div class="controls">
						<form:input path="loanSend" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贷款种类：</label>
					<div class="controls">
						<form:select path="loanKind" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_LOAN_KIND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">展期标志：</label>
					<div class="controls">
						<form:select path="extensionFlag" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_EXTENSION_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">四级分类：</label>
					<div class="controls">
						<form:select path="fourCla" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_FOUR_CLA')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">五级分类：</label>
					<div class="controls">
						<form:select path="fiveCla" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_FIVE_CLA')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贷款合同号码：</label>
					<div class="controls">
						<form:input path="loanContractNum" htmlEscape="false" maxlength="60" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
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
			<shiro:hasPermission name="ec:ecCCbDuebillInfo:modify"><button class="btn_public" type="button" onclick="ecCCbDuebillInfoForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>