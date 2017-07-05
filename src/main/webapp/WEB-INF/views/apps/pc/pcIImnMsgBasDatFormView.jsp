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
	<form:form id="inputForm" modelAttribute="pcIImnMsgBasDat" action="${ctx}/pc/pcIImnMsgBasDat/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息类别：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.msgType}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构代码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOrgNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaProd, 'PC_AA_PROD', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">业务种类细分：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaProdKind, 'PC_AA_PROD_KIND', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaBusiNo}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">发生地点（行政区域邮编）：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOccurAddr}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">开户日期：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOpenDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">到期日期：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaEndDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaCurrCode, 'PC_AA_CURR_CODE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">共享授信额度：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaSharCred}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最大负债额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaDebtMax}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">担保方式：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaAssuKind, 'PC_AA_ASSU_KIND', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">还款频率：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaPmtFreq, 'PC_AA_PMT_FREQ', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">还款月数：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaPmtMonth}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">剩余还款月数：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaRemnMonth}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">结算-应还款日：</label>
					<div class="controls-view">
							${pcIImnMsgBasDat.aaPayDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最近一次实际还款日期：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaPmtDateLast}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">本月应还款金额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaCurrMontPmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">授信额度：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaCredAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">实际还款金额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaFactPmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">余额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaCurrBal}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">当前逾期期数：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdueNum}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">当前逾期总额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdueAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">逾期31-60天未归还贷款本金：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdue3160}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">逾期61-90天未归还贷款本金：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdue6190}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">逾期91-180天未归还贷款本金：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdue91180}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">逾期180天以上未归还贷款本金：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdue181}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">违约次数：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaFellNmu}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最高逾期期数：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOverdueNuMx}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">五级分类状态：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaFiveClass, 'PC_AA_FIVE_CLASS', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">账户状态：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaAcctState, 'PC_AA_ACCT_STATE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">24个月（账户）还款状态：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaMonth24State}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">透支180天以上未付余额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOver180Upmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">账户拥有者信息提示：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaOwerInfo, 'PC_AA_OWER_INFO', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">姓名：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaOwerName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.aaCertTp, 'PC_AA_CERT_TP', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">证件号码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaCertNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">预留字段：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.aaRmnt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">性别：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.bbSex, 'PC_BB_SEX', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">出生日期：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbBrithday}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">婚姻状况：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.bbMarrySign, 'PC_BB_MARRY_SIGN', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">最高学历：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.bbEducLvl, 'PC_BB_EDUC_LVL', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">最高学位：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.bbDegrLvl, 'PC_BB_DEGR_LVL', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">住宅电话：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbHomePhone}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">手机号码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbMobile}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">单位电话：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbUnitPhone}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">电子邮箱：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbEmail}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">通讯地址：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbAddr}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">通讯地址邮政编码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbPostCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">户籍地址：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbRegiAddr}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">配偶姓名：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbMateName}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">配偶证件类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.bbMateCertTp, 'PC_AA_CERT_TP', '')}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">配偶证件号码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbMateCertNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">配偶工作单位：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbMateUnit}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">配偶联系电话：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.bbMatePhone}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">职业：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.ccOccup, 'PC_CC_OCCUP', '')}
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">单位名称：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccUnitName}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">单位所属行业：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.ccUnitKind, 'PC_CC_UNIT_KIND', '')}
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">单位地址：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccUnitAddr}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">单位地址邮政编码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccUnitPost}
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">本单位工作起始年份：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccBegnDate}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">职务：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.ccPosn, 'PC_CC_POSN', '')}
					</div>
				</div>
		 		<div class="span6">
					<label class="control-label">职称：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.ccOfrn, 'PC_CC_OFRN', '')}
					</div>
			 	</div>
		 		<%-- <div class="span6">
					<label class="control-label">年收入：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccIncome}
					</div>
				</div> --%>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">工资账号：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccWageAcct}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">工资账户开户银行：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ccOpenBankNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">居住地址：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ddHomeAddr}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">居住地址邮政编码：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ddHomePostZip}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">居住状况：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.ddHomeState, 'PC_DD_HOME_STATE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">金融机构代码（旧机构号）：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ffOrgNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">业务号（账号）（旧机构号）：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ffNewBusiNo}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">结算－应还款日：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ffPayDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">特殊交易类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(pcIImnMsgBasDat.ggSpecType, 'PC_GG_SPEC_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">发生日期：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ggOccurDate}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">变更月数：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ggChangeNum}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">发生金额：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ggAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">明细信息：</label>
					<div class="controls-view">
						${pcIImnMsgBasDat.ggDetail}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${pcIImnMsgBasDat.remarks}
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