<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-借款人关注信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbAttentionInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<ul id="ecCBbAttentionInfo" class="nav nav-tabs">
		<li class="active"><a href="#attentionInfo">借款人关注信息</a></li>
		<li><a href="#incidentInfo">大事件信息</a></li>
		<li><a href="#sueInfo">诉讼信息</a></li>
	</ul>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbAttentionInfo" action="${ctx}/ec/ecCBbAttentionInfo/update" method="post" class="form-horizontal">
		<input id="attentionId" name="attentionId" type="hidden" value="${ecCBbAttentionInfo.attentionId}"/>
		<div class="tab-content">
			<!-- 借款人关注信息 -->
			<div id="attentionInfo" class="tab-pane active">
				<sys:message content="${message}"/>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">关注信息ID：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.attentionId}
								<span class="help-inline"><font color="red">*</font></span>
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">金融机构代码：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.financeCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">客户编号：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.customerNo}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">借款人名称：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.borrowerName}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">贷款卡编码：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.loanCardCd}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">信息记录类型：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbAttentionInfo.recordTraceCd, 'EC_RECORD_TRACE_CD', '')}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">信息记录操作类型：</label>
							<div class="controls-view">
							    ${fns:getDictLabels(ecCBbAttentionInfo.recordOpType, 'EC_RECORD_OP_TYPE', '')}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">错误代码：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.errorCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">变更标示段值：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.changeValue}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">信息记录跟踪编号：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.recordTraceNo}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">业务发生日期：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.occurDate}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">建行机构代码：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.sourceOrgCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">上报标志：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.reportFlag}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">报文上报机构代码：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.reportOrgCd}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span6">
							<label class="control-label">入库状态：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.stockState}
							</div>
					 	</div>
				 		<div class="span6">
							<label class="control-label">多实体标识：</label>
							<div class="controls-view">
								${ecCBbAttentionInfo.multiTenancyId}
							</div>
						</div>
					</div>
				</div>
				<div class="control-group">
				 	<div class="container-fluid">
				 		<div class="span11">
							<label class="control-label">备注信息：</label>
							<div class="controls-view">
							   ${ecCBbAttentionInfo.remarks}
							</div>
					 	</div>
					</div>
				</div>
			</div>
		
			<!-- 大事件信息 -->
			<div id="incidentInfo" class="tab-pane">
				<iframe id="ecCBbIncidentInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
			
			<!-- 诉讼信息 -->
			<div id="sueInfo" class="tab-pane">
				<iframe id="ecCBbSueInfo" src="" width="100%" frameborder="0" style="min-height: 480px;"></iframe>
			</div>
		</div>
		<div class="form-actions">
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>