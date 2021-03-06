<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借款人出资资本构成管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbContAssetForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<ul id="ecCBbContAsset" class="nav nav-tabs">
		<li class="active"><a href="#contAsset">借款人出资资本构成</a></li>
		<li><a href="#registerAsset">借款注册资本</a></li>
		<li><a href="#externalInvest">对外投资资本</a></li>
		<li><a href="#managerPerson">高级管理人员</a></li>
		<li><a href="#groupCorp">集团公司</a></li>
	</ul>
	<br/>
		<div class="tab-content">
			<!-- 借款人出资资本构成 -->
			<div id="contAsset" class="tab-pane active">
				<form:form id="inputForm" modelAttribute="ecCBbContAsset" action="${ctx}/ec/ecCBbContAsset/update" method="post" class="form-horizontal">
				<sys:message content="${message}"/>		
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">出资资本ID：</label>
							<div class="controls">
								<form:input path="contAssetId" htmlEscape="false" maxlength="13" class="input-large required digits" disabled="true"/>
								<span class="help-inline"><font color="red">*</font></span>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">客户编号：</label>
							<div class="controls">
								<form:input path="customerNo" htmlEscape="false" maxlength="21" class="input-large required"/>
								<span class="help-inline"><font color="red">*</font></span>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">出资方名称：</label>
							<div class="controls">
								<form:input path="contName" htmlEscape="false" maxlength="100" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">出资方贷款卡编码：</label>
							<div class="controls">
								<form:input path="contLoanCode" htmlEscape="false" maxlength="16" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">组织机构代码：</label>
							<div class="controls">
								<form:input path="orgCode" htmlEscape="false" maxlength="10" class="input-large "/>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">登记注册号：</label>
							<div class="controls">
								<form:input path="registerNo" htmlEscape="false" maxlength="20" class="input-large "/>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">证件类型：</label>
							<div class="controls">
								<form:select path="certType" class="input-large ">
									<form:option value="" label=""/>
									<form:options items="${fns:getDictList('EC_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
								</form:select>
							</div>
					 	</div>
				 		<div class="span6">	 
							<label class="control-label">证件号码：</label>
							<div class="controls">
								<form:input path="certNum" htmlEscape="false" maxlength="30" class="input-large "/>
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
							<label class="control-label">出资金额：</label>
							<div class="controls">
								<form:input path="contAmt" htmlEscape="false" maxlength="8" class="input-large "/>
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
					<shiro:hasPermission name="ec:ecCBbContAsset:modify"><button class="btn_public" type="button" onclick="ecCBbContAssetForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
					<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
				</div>
			</form:form>
			</div>
			
			<!-- 借款注册资本 -->
			<div id="registerAsset" class="tab-pane">
				<iframe id="ecCBbRegisterAsset" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
			
			<!-- 对外投资资本 -->
			<div id="externalInvest" class="tab-pane">
				<iframe id="ecCBbExternalInvest" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
			
			<!-- 高级管理人员 -->
			<div id="managerPerson" class="tab-pane">
				<iframe id="ecCBbManagerPerson" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
			
			<!-- 集团公司 -->
			<div id="groupCorp" class="tab-pane">
				<iframe id="ecCBbGroupCorp" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
		</div>
</body>
</html>