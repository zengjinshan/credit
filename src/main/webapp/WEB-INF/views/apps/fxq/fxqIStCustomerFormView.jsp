<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/fxq/fxqIStCustomerForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="fxqIStCustomer" action="${ctx}/fxq/fxqIStCustomer/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${fxqIStCustomer.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${fxqIStCustomer.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">所属机构代码名称：</label>
					<div class="controls-view">
						${fxqIStCustomer.belongedOrgName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStCustomer.custTp, 'FXQ_CUST_TP', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">所属机构所在地区行政区划代码：</label>
					<div class="controls-view">
						${fxqIStCustomer.belongedOrgDistrictCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户名称姓名：</label>
					<div class="controls-view">
						${fxqIStCustomer.custName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">所属机构代码类型：</label>
					<div class="controls-view">
						${fxqIStCustomer.fict}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStCustomer.certType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件类型说明：</label>
					<div class="controls-view">
						${fxqIStCustomer.certDesc}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户身份证件证明文件号码：</label>
					<div class="controls-view">
						${fxqIStCustomer.certNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls-view">
						${fxqIStCustomer.custInd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑交易特征：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStCustomer.stcr, 'FXQ_STCR', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">联系电话：</label>
					<div class="controls-view">
						${fxqIStCustomer.contactPhone}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对私客户职业或对公客户行业类别：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStCustomer.industryOrJob, 'FXQ_INDUSTRY_OR_JOB', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户详细地址：</label>
					<div class="controls-view">
						${fxqIStCustomer.custDetailAddr}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户注册资金：</label>
					<div class="controls-view">
						${fxqIStCustomer.corpRegisterFun}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户其他联系方式：</label>
					<div class="controls-view">
						${fxqIStCustomer.otherContactMethod}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人姓名：</label>
					<div class="controls-view">
						${fxqIStCustomer.corpLegalRepName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户国籍：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStCustomer.natising2, 'FXQ_NATISING2', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人身份证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(fxqIStCustomer.corpLegalRepCertType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户总数：</label>
					<div class="controls-view">
						${fxqIStCustomer.accCnt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人身份证件号码：</label>
					<div class="controls-view">
						${fxqIStCustomer.corpLegalRepCertNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(fxqIStCustomer.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
			 	</div>
			</div>
		</div>
		<%-- <div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${fxqIStCustomer.remarks}
					</div>
			 	</div>
			</div>
		</div> --%>
		<div class="form-actions">
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>