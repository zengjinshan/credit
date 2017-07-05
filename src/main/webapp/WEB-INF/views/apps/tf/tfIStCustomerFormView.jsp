<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>可疑客户补录校验管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/tf/tfIStCustomerForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="tfIStCustomer" action="${ctx}/tf/tfIStCustomer/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">数据日期：</label>
					<div class="controls-view">
							${tfIStCustomer.dataDt}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户编号：</label>
					<div class="controls-view">
						${tfIStCustomer.custNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户名称姓名：</label>
					<div class="controls-view">
						${tfIStCustomer.custName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑交易特征：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.stcr, 'FXQ_STCR', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">电信诈骗特征：</label>
					<div class="controls-view">
					     ${fns:getDictLabels(tfIStCustomer.tfStcr, 'FXQ_TF_STCR', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑程度：</label>
					<div class="controls-view">
						${tfIStCustomer.ssdg}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">采取措施：</label>
					<div class="controls-view">
						${tfIStCustomer.tkms}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可疑行为描述：</label>
					<div class="controls-view">
						${tfIStCustomer.ssds}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件类型说明：</label>
					<div class="controls-view">
						${tfIStCustomer.certDesc}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户身份证件证明文件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.certType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户身份证件证明文件号码：</label>
					<div class="controls-view">
						${tfIStCustomer.certNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公对私标志：</label>
					<div class="controls-view">
						${tfIStCustomer.custInd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">联系电话：</label>
					<div class="controls-view">
						${tfIStCustomer.contactPhone}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户详细地址：</label>
					<div class="controls-view">
						${tfIStCustomer.custDetailAddr}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">客户其他联系方式：</label>
					<div class="controls-view">
						${tfIStCustomer.otherContactMethod}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户国籍：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.natising2, 'FXQ_NATISING2', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对私客户职业或对公客户行业类别：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.industryOrJob, 'FXQ_INDUSTRY_OR_JOB', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户注册资金：</label>
					<div class="controls-view">
						${tfIStCustomer.corpRegisterFun}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人姓名：</label>
					<div class="controls-view">
						${tfIStCustomer.corpLegalRepName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人身份证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.corpLegalRepCertType, 'FXQ_CERT_TYPE', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对公客户法定代表人身份证件号码：</label>
					<div class="controls-view">
						${tfIStCustomer.corpLegalRepCertNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公法定代表人身份证件类型说明：</label>
					<div class="controls-view">
						${tfIStCustomer.corpLegalRepCertDesc}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户总数：</label>
					<div class="controls-view">
						${tfIStCustomer.accCnt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">客户类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.custTp, 'FXQ_CUST_TP', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">补录机构：</label>
					<div class="controls-view">
						${tfIStCustomer.agrOrg}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对私客户工作单位名称：</label>
					<div class="controls-view">
						${tfIStCustomer.indvWorkUnitName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对私客户的职务：</label>
					<div class="controls-view">
						${tfIStCustomer.indvDuty}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对公客户的经营范围：</label>
					<div class="controls-view">
						${tfIStCustomer.corpOperRange}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">实际控制人（对公/对私）：</label>
					<div class="controls-view">
						${tfIStCustomer.ctlSharehdName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">实际控制人证件类型：</label>
					<div class="controls-view">
						${tfIStCustomer.ctlSharehdCertType}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">实际控制人证件号码：</label>
					<div class="controls-view">
						${tfIStCustomer.ctlSharehdCertNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">校验信息：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(tfIStCustomer.modiInfo, 'FXQ_CHECK_INFO', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">校验符号：</label>
					<div class="controls-view">
						${tfIStCustomer.checkField}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">所属机构代码名称：</label>
					<div class="controls-view">
						${tfIStCustomer.belongedOrgName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">所属机构所在地区行政区划代码：</label>
					<div class="controls-view">
						${tfIStCustomer.belongedOrgDistrictCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">所属机构代码类型：</label>
					<div class="controls-view">
						${tfIStCustomer.fict}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${tfIStCustomer.multiTenancyId}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">报送期限：</label>
					<div class="controls-view">
						${tfIStCustomer.periodValue}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${tfIStCustomer.remarks}
					</div>
			 	</div>
			</div>
		</div>
		<div class="form-actions">
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>