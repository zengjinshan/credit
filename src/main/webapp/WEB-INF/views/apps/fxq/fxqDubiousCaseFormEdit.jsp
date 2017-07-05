<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑案例管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqDubiousCaseForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqDubiousCase" action="${ctx}/fxq/fxqDubiousCase/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls">
						<input name="dataDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate required"
							value="<fmt:formatDate value="${fxqDubiousCase.dataDt}" pattern="yyyy-MM-dd HH:mm:ss"/>"
							onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户编号：</label>
					<div class="controls">
						<form:input path="custNo" htmlEscape="false" maxlength="32" class="input-large required" disabled="true"/>
						<span class="help-inline"><font color="red">*</font> </span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称姓名：</label>
					<div class="controls">
						<form:input path="custName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">证件类型说明：</label>
					<div class="controls">
						<form:input path="certDesc" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户身份证件证明文件类型：</label>
					<div class="controls">
						<form:select path="certType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户身份证件证明文件号码：</label>
					<div class="controls">
						<form:input path="certNum" htmlEscape="false" maxlength="120" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls">
						<form:input path="custInd" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">联系电话：</label>
					<div class="controls">
						<form:input path="contactPhone" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户详细地址：</label>
					<div class="controls">
						<form:input path="custDetailAddr" htmlEscape="false" maxlength="140" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">客户其他联系方式：</label>
					<div class="controls">
						<form:input path="otherContactMethod" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户国籍：</label>
					<div class="controls">
						<form:select path="natising2" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_NATISING2')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对私客户职业或对公客户行业类别：</label>
					<div class="controls">
						<form:select path="industryOrJob" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_INDUSTRY_OR_JOB')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公客户注册资金：</label>
					<div class="controls">
						<form:input path="corpRegisterFun" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对公客户法定代表人姓名：</label>
					<div class="controls">
						<form:input path="corpLegalRepName" htmlEscape="false" maxlength="180" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人身份证件类型：</label>
					<div class="controls">
						<form:select path="corpLegalRepCertType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CERT_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对公客户法定代表人身份证件号码：</label>
					<div class="controls">
						<form:input path="corpLegalRepCertNum" htmlEscape="false" maxlength="120" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公法定代表人身份证件类型说明：</label>
					<div class="controls">
						<form:input path="corpLegalRepCertDesc" htmlEscape="false" maxlength="32" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">账户总数：</label>
					<div class="controls">
						<form:input path="accCnt" htmlEscape="false" maxlength="18" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户类型：</label>
					<div class="controls">
						<form:select path="custTp" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_CUST_TP')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
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
					<label class="control-label">可疑交易特征：</label>
					<div class="controls">
						<form:select path="stcr" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('FXQ_TSCT')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对私客户工作单位名称：</label>
					<div class="controls">
						<form:input path="indvWorkUnitName" htmlEscape="false" maxlength="64" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对私客户的职务：</label>
					<div class="controls">
						<form:input path="indvDuty" htmlEscape="false" maxlength="3" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对公客户的经营范围：</label>
					<div class="controls">
						<form:input path="corpOperRange" htmlEscape="false" maxlength="600" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">实际控制人（对公/对私）：</label>
					<div class="controls">
						<form:input path="ctlSharehdName" htmlEscape="false" maxlength="180" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">实际控制人证件类型：</label>
					<div class="controls">
						<form:input path="ctlSharehdCertType" htmlEscape="false" maxlength="4" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">实际控制人证件号码：</label>
					<div class="controls">
						<form:input path="ctlSharehdCertNum" htmlEscape="false" maxlength="120" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">校验信息：</label>
					<div class="controls">
						<form:input path="modiInfo" htmlEscape="false" maxlength="3000" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验符号：</label>
					<div class="controls">
						<form:input path="checkField" htmlEscape="false" maxlength="2" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">所属机构代码名称：</label>
					<div class="controls">
						<form:input path="belongedOrgName" htmlEscape="false" maxlength="100" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">所属机构所在地区行政区划代码：</label>
					<div class="controls">
						<form:input path="belongedOrgDistrictCd" htmlEscape="false" maxlength="12" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">所属机构代码类型：</label>
					<div class="controls">
						<form:input path="fict" htmlEscape="false" maxlength="2" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">备注信息：</label>
					<div class="controls">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-large "/>
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
		<div class="form-actions">
			<shiro:hasPermission name="fxq:fxqDubiousCase:edit"><button class="btn_public" type="button" onclick="fxqDubiousCaseForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>