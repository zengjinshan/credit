<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借款人概况信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbGeneralInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<ul id="ecCBbGeneralInfo" class="nav nav-tabs">
		<li class="active"><a href="#generalInfo">借款人概况信息</a></li>
		<li><a href="#financeLinkMode">财务部联系方式</a></li>
		<li><a href="#stockInfo">股票信息</a></li>
	</ul>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbGeneralInfo" action="${ctx}/ec/ecCBbGeneralInfo/update" method="post" class="form-horizontal">
		<input id="customerNo" name="customerNo" type="hidden" value="${ecCBbGeneralInfo.customerNo}"/>
		<div class="tab-content">
			<!-- 借款人概况信息 -->
			<div id="generalInfo" class="tab-pane active">
				<sys:message content="${message}"/>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">客户编号：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.customerNo}
								<span class="help-inline"><font color="red">*</font></span>
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">业务发生日期：</label>
							<div class="controls-view">
									${ecCBbGeneralInfo.occurDate}
								<span class="help-inline"><font color="red">*</font></span>
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">金融机构代码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.financeCd}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">贷款卡编码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.loanCardCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人国别：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.countryCode, 'EC_BORROWER_COUNTRY', '')}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人中文名称：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.borrowerNameCn}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人外文名称：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.borrowerNameFn}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">组织机构代码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.orgCode}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人成立年份：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.startDate}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">登记注册类型：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.registerType}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">登记注册号：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.registerNo}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">注册登记日期：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.registerDate}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">营业执照到期日期：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.licenseMatDate}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">国税登记证号码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.nationalTaxRegisterNo}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">地税登记证号码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.localTaxRegisterNo}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人性质：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.borrowerType, 'EC_BORROWER_TYPE', '')}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">行业分类：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.tradeSort}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">从业人数：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.employeeNum}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">行政区划：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.adminPlot}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人特征：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.borrowerCharacter}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人联系电话：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.telNum}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人注册地址：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.registerAddr}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人传真号码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.faxNum}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人Email地址：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.emailAddr}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">借款人网址：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.web}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人通讯地址：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.address}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">邮政编码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.postCode}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">主要产品情况：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.productInfo}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">经营场地面积：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.manageArea}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">经营场地所有权：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.manageOwnership, 'EC_MANAGE_OWNERSHIP', '')}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">集团客户标志：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.groupFlag, 'EC_GROUP_FLAG', '')}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">进出口权标志：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.impExpPowerFlage, 'EC_IMP_EXP_POWER_FLAGE', '')}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">上市公司标志：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.stockFlag, 'EC_STOCK_FLAG', '')}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">信息记录操作类型：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbGeneralInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">错误代码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.errorCd}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">变更标示段值：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.changeValue}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">信息记录跟踪编号：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.recordOpCode}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">源机构代码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.sourceOrgCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">上报标志：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.reportFlag}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">报文上报机构代码：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.reportOrgCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">入库状态：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.stockState}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">多实体标识：</label>
							<div class="controls-view">
								${ecCBbGeneralInfo.multiTenancyId}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span11">
							<label class="control-label">备注信息：</label>
							<div class="controls-view">
							   ${ecCBbGeneralInfo.remarks}
							</div>
					 	</div>
					</div>
				</div>
			</div>
			
			<!-- 财务部联系方式 -->
			<div id="financeLinkMode" class="tab-pane">
				<iframe id="ecCBbFinanceLinkMode" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
			
			<!-- 股票信息 -->
			<div id="stockInfo" class="tab-pane">
				<iframe id="ecCBbStockInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
		</div>
		<div class="form-actions">
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>