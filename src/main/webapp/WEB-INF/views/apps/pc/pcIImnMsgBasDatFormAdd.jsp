<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>个人征信数据报送层管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/pc/pcIImnMsgBasDatForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="pcIImnMsgBasDat" action="${ctx}/pc/pcIImnMsgBasDat/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息类别：</label>
					<div class="controls">
						<form:input path="msgType" htmlEscape="false" maxlength="1" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">金融机构代码：</label>
					<div class="controls">
						<form:input path="aaOrgNo" htmlEscape="false" maxlength="14" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls">
						<form:select path="aaProd" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_PROD')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">业务种类细分：</label>
					<div class="controls">
						<form:select path="aaProdKind" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_PROD_KIND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号：</label>
					<div class="controls">
						<form:input path="aaBusiNo" htmlEscape="false" maxlength="40" class="input-large required"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">发生地点（行政区域邮编）：</label>
					<div class="controls">
						<form:input path="aaOccurAddr" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户日期：</label>
					<div class="controls">
						<form:input path="aaOpenDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">到期日期：</label>
					<div class="controls">
						<form:input path="aaEndDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls">
						<form:select path="aaCurrCode" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_CURR_CODE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">共享授信额度：</label>
					<div class="controls">
						<form:input path="aaSharCred" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最大负债额：</label>
					<div class="controls">
						<form:input path="aaDebtMax" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">担保方式：</label>
					<div class="controls">
						<form:select path="aaAssuKind" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_ASSU_KIND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">还款频率：</label>
					<div class="controls">
						<form:select path="aaPmtFreq" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_PMT_FREQ')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">还款月数：</label>
					<div class="controls">
						<form:input path="aaPmtMonth" htmlEscape="false" maxlength="3" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">剩余还款月数：</label>
					<div class="controls">
						<form:input path="aaRemnMonth" htmlEscape="false" maxlength="3" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">结算-应还款日：</label>
					<div class="controls">
						<form:input path="aaPayDate" htmlEscape="false" maxlength="40" class="input-large required"/>
						<%-- <input id="aaPayDate" name="aaPayDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
							value="${pcIImnMsgBasDat.aaPayDate}"
							onclick="WdatePicker({dateFmt:'',isShowClear:false});"/> --%>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最近一次实际还款日期：</label>
					<div class="controls">
						<form:input path="aaPmtDateLast" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">本月应还款金额：</label>
					<div class="controls">
						<form:input path="aaCurrMontPmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">授信额度：</label>
					<div class="controls">
						<form:input path="aaCredAmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">实际还款金额：</label>
					<div class="controls">
						<form:input path="aaFactPmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">余额：</label>
					<div class="controls">
						<form:input path="aaCurrBal" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">当前逾期期数：</label>
					<div class="controls">
						<form:input path="aaOverdueNum" htmlEscape="false" maxlength="2" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">当前逾期总额：</label>
					<div class="controls">
						<form:input path="aaOverdueAmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">逾期31-60天未归还贷款本金：</label>
					<div class="controls">
						<form:input path="aaOverdue3160" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">逾期61-90天未归还贷款本金：</label>
					<div class="controls">
						<form:input path="aaOverdue6190" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">逾期91-180天未归还贷款本金：</label>
					<div class="controls">
						<form:input path="aaOverdue91180" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">逾期180天以上未归还贷款本金：</label>
					<div class="controls">
						<form:input path="aaOverdue181" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">违约次数：</label>
					<div class="controls">
						<form:input path="aaFellNmu" htmlEscape="false" maxlength="3" class="input-large  digits"/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最高逾期期数：</label>
					<div class="controls">
						<form:input path="aaOverdueNuMx" htmlEscape="false" maxlength="2" class="input-large  digits"/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">五级分类状态：</label>
					<div class="controls">
						<form:select path="aaFiveClass" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_FIVE_CLASS')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户状态：</label>
					<div class="controls">
						<form:select path="aaAcctState" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_ACCT_STATE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">24个月（账户）还款状态：</label>
					<div class="controls">
						<form:input path="aaMonth24State" htmlEscape="false" maxlength="24" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">透支180天以上未付余额：</label>
					<div class="controls">
						<form:input path="aaOver180Upmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">账户拥有者信息提示：</label>
					<div class="controls">
						<form:select path="aaOwerInfo" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_OWER_INFO')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">姓名：</label>
					<div class="controls">
						<form:input path="aaOwerName" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">证件类型：</label>
					<div class="controls">
						<form:select path="aaCertTp" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_CERT_TP')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls">
						<form:input path="aaCertNo" htmlEscape="false" maxlength="18" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">预留字段：</label>
					<div class="controls">
						<form:input path="aaRmnt" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">性别：</label>
					<div class="controls">
						<form:select path="bbSex" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_BB_SEX')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">出生日期：</label>
					<div class="controls">
						<form:input path="bbBrithday" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">婚姻状况：</label>
					<div class="controls">
						<form:select path="bbMarrySign" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_BB_MARRY_SIGN')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">最高学历：</label>
					<div class="controls">
						<form:select path="bbEducLvl" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_BB_EDUC_LVL')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最高学位：</label>
					<div class="controls">
						<form:select path="bbDegrLvl" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_BB_DEGR_LVL')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">住宅电话：</label>
					<div class="controls">
						<form:input path="bbHomePhone" htmlEscape="false" maxlength="25" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">手机号码：</label>
					<div class="controls">
						<form:input path="bbMobile" htmlEscape="false" maxlength="16" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">单位电话：</label>
					<div class="controls">
						<form:input path="bbUnitPhone" htmlEscape="false" maxlength="25" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">电子邮箱：</label>
					<div class="controls">
						<form:input path="bbEmail" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">通讯地址：</label>
					<div class="controls">
						<form:input path="bbAddr" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">通讯地址邮政编码：</label>
					<div class="controls">
						<form:input path="bbPostCd" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">户籍地址：</label>
					<div class="controls">
						<form:input path="bbRegiAddr" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">配偶姓名：</label>
					<div class="controls">
						<form:input path="bbMateName" htmlEscape="false" maxlength="30" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">配偶证件类型：</label>
					<div class="controls">
						<form:select path="bbMateCertTp" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_AA_CERT_TP')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">配偶证件号码：</label>
					<div class="controls">
						<form:input path="bbMateCertNo" htmlEscape="false" maxlength="18" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">配偶工作单位：</label>
					<div class="controls">
						<form:input path="bbMateUnit" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">配偶联系电话：</label>
					<div class="controls">
						<form:input path="bbMatePhone" htmlEscape="false" maxlength="25" class="input-large "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">	 
					<label class="control-label">职业：</label>
					<div class="controls">
						<form:select path="ccOccup" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_CC_OCCUP')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">单位名称：</label>
					<div class="controls">
						<form:input path="ccUnitName" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">	 
					<label class="control-label">单位所属行业：</label>
					<div class="controls">
						<form:select path="ccUnitKind" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_CC_UNIT_KIND')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">单位地址：</label>
					<div class="controls">
						<form:input path="ccUnitAddr" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">	 
					<label class="control-label">单位地址邮政编码：</label>
					<div class="controls">
						<form:input path="ccUnitPost" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">本单位工作起始年份：</label>
					<div class="controls">
						<form:input path="ccBegnDate" htmlEscape="false" maxlength="4" class="input-large "/>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">	 
					<label class="control-label">职务：</label>
					<div class="controls">
						<form:select path="ccPosn" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_CC_POSN')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">职称：</label>
					<div class="controls">
						<form:select path="ccOfrn" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_CC_OFRN')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<%-- <div class="span6">	 
					<label class="control-label">年收入：</label>
					<div class="controls">
						<form:input path="ccIncome" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div> --%>
		 		<div class="span6">
					<label class="control-label">工资账号：</label>
					<div class="controls">
						<form:input path="ccWageAcct" htmlEscape="false" maxlength="40" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">工资账户开户银行：</label>
					<div class="controls">
						<form:input path="ccOpenBankNo" htmlEscape="false" maxlength="14" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">居住地址：</label>
					<div class="controls">
						<form:input path="ddHomeAddr" htmlEscape="false" maxlength="60" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">居住地址邮政编码：</label>
					<div class="controls">
						<form:input path="ddHomePostZip" htmlEscape="false" maxlength="6" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">居住状况：</label>
					<div class="controls">
						<form:select path="ddHomeState" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_DD_HOME_STATE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">金融机构代码（旧机构号）：</label>
					<div class="controls">
						<form:input path="ffOrgNo" htmlEscape="false" maxlength="14" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号（账号）（旧机构号）：</label>
					<div class="controls">
						<form:input path="ffNewBusiNo" htmlEscape="false" maxlength="40" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">结算－应还款日：</label>
					<div class="controls">
						<form:input path="ffPayDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">特殊交易类型：</label>
					<div class="controls">
						<form:select path="ggSpecType" class="input-large ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('PC_GG_SPEC_TYPE')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">发生日期：</label>
					<div class="controls">
						<form:input path="ggOccurDate" htmlEscape="false" maxlength="8" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">变更月数：</label>
					<div class="controls">
						<form:input path="ggChangeNum" htmlEscape="false" maxlength="4" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">发生金额：</label>
					<div class="controls">
						<form:input path="ggAmt" htmlEscape="false" maxlength="10" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">明细信息：</label>
					<div class="controls">
						<form:input path="ggDetail" htmlEscape="false" maxlength="200" class="input-large "/>
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
			<shiro:hasPermission name="pc:pcIImnMsgBasDat:add"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>