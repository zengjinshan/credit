<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-票据贴现业务管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCCbReciptDiscountBusiForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCCbReciptDiscountBusi" action="${ctx}/ec/ecCCbReciptDiscountBusi/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务发生日期：</label>
					<div class="controls">
						<input id="occurDate" name="occurDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="${ecCCbReciptDiscountBusi.occurDate}"
							onclick="WdatePicker({dateFmt:'yyyyMMdd',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">票据内部编号：</label>
					<div class="controls">
						<form:input path="reciptInNo" htmlEscape="false" maxlength="60" class="input-large required" disabled="true"/>
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
						<form:select path="recordOpType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_RECORD_OP_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
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
					<label class="control-label">票据种类：</label>
					<div class="controls">
						<form:select path="reciptStyle" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('EC_RECIPT_STYLE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贴现申请人名称：</label>
					<div class="controls">
						<form:input path="discountApplyName" htmlEscape="false" maxlength="100" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls">
						<form:input path="loanCardCd" htmlEscape="false" maxlength="16" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">承兑人/行名称：</label>
					<div class="controls">
						<form:input path="acceptor" htmlEscape="false" maxlength="100" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码2：</label>
					<div class="controls">
						<form:input path="loanCardCd2" htmlEscape="false" maxlength="16" class="input-large "/>
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
					<label class="control-label">币种：</label>
					<div class="controls">
						<form:input path="currency" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">贴现金额：</label>
					<div class="controls">
						<form:input path="discountAmt" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贴现日：</label>
					<div class="controls">
						<form:input path="discountDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">承兑到期日：</label>
					<div class="controls">
						<form:input path="acceptDeadline" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">票面金额：</label>
					<div class="controls">
						<form:input path="parAmt" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">票据状态：</label>
					<div class="controls">
						<form:input path="billStatus" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">四级分类：</label>
					<div class="controls">
						<form:input path="fourCla" htmlEscape="false" maxlength="20" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">五级分类：</label>
					<div class="controls">
						<form:input path="fiveCla" htmlEscape="false" maxlength="20" class="input-large "/>
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
			<shiro:hasPermission name="ec:ecCCbReciptDiscountBusi:modify"><button class="btn_public" type="button" onclick="ecCCbReciptDiscountBusiForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>