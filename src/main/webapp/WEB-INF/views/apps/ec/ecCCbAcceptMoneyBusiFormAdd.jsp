<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-承兑汇票业务管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbAcceptMoneyBusiForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbAcceptMoneyBusi" action="${ctx}/ec/ecCCbAcceptMoneyBusi/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls">
						<input id="occurDate" name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${ecCCbAcceptMoneyBusi.occurDate}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">债项编号：</label>
					<div class="controls">
						<form:input path="loanNum" htmlEscape="false" maxlength="60" class="input-large required"/>
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
					<label class="control-label">承兑协议号码：</label>
					<div class="controls">
						<form:input path="acceptAgrNum" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票号码：</label>
					<div class="controls">
						<form:input path="moneyOrderNum" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">授信协议号码：</label>
					<div class="controls">
						<form:input path="creditAgrNo" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls">
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls">
						<form:input path="recordTraceNo" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">出票人名称：</label>
					<div class="controls">
						<form:input path="remitterName" htmlEscape="false" maxlength="100" class="input-large "/>
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
					<label class="control-label">币种：</label>
					<div class="controls">
						<form:select path="currency" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_CURRENCY')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">汇票金额：</label>
					<div class="controls">
						<form:input path="moneyOrderAmt" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票承兑日：</label>
					<div class="controls">
						<form:input path="moneyOrderAcceptDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">汇票到期日：</label>
					<div class="controls">
						<form:input path="moneyOrderEndDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票付款日期：</label>
					<div class="controls">
						<form:input path="moneyOrderPayDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">保证金比例：</label>
					<div class="controls">
						<form:input path="securityMoneyPer" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">担保标志：</label>
					<div class="controls">
						<form:select path="guarFlag" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_GUAR_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">垫款标志：</label>
					<div class="controls">
						<form:select path="paybackFlag" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_PAYBACK_FLAG')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇票状态：</label>
					<div class="controls">
						<form:select path="moneyOrderStatus" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_DRAFT_STATUS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">五级分类：</label>
					<div class="controls">
						<form:select path="fiveCla" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_FIVE_CLA')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
					<label class="control-label">变更标示段值：</label>
					<div class="controls">
						<form:input path="changeValue" htmlEscape="false" maxlength="100" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">上报标志：</label>
					<div class="controls">
						<form:input path="reportFlag" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls">
						<form:input path="reportOrgCd" htmlEscape="false" maxlength="9" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">入库状态：</label>
					<div class="controls">
						<form:input path="stockState" htmlEscape="false" maxlength="1" class="input-large "/>
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
			<shiro:hasPermission name="ec:ecCCbAcceptMoneyBusi:add"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>