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
					<div class="controls-view">
							${ecCCbReciptDiscountBusi.occurDate}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">票据内部编号：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.reciptInNo}
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
						${ecCCbReciptDiscountBusi.financeCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">授信协议号码：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.creditAgrNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">信息记录操作类型：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbReciptDiscountBusi.recordOpType, 'EC_RECORD_OP_TYPE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">信息记录跟踪编号：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.recordTraceNo}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">票据种类：</label>
					<div class="controls-view">
					    ${fns:getDictLabels(ecCCbReciptDiscountBusi.reciptStyle, 'EC_RECIPT_STYLE', '')}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贴现申请人名称：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.discountApplyName}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.loanCardCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">承兑人/行名称：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.acceptor}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贷款卡编码2：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.loanCardCd2}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">组织机构代码：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.orgCode}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">币种：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.currency}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">贴现金额：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.discountAmt}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">贴现日：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.discountDate}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">承兑到期日：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.acceptDeadline}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">票面金额：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.parAmt}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">票据状态：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.billStatus}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">四级分类：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.fourCla}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">五级分类：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.fiveCla}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">错误代码：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.errorCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">源机构代码：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.sourceOrgCd}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">变更标示段值：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.changeValue}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上报标志：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.reportFlag}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">报文上报机构代码：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.reportOrgCd}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">入库状态：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.stockState}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCCbReciptDiscountBusi.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCCbReciptDiscountBusi.remarks}
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