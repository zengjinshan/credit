<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-2007版利润及利润分配信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBb2007ProfitAssignForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBb2007ProfitAssign" action="${ctx}/ec/ecCBb2007ProfitAssign/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务基本信息ID：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.reportBaseId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">营业收入：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9170}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">营业成本：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9171}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">营业税金及附加：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9172}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">销售费用：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9173}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">管理费用：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9174}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务费用：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9175}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资产减值损失：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9176}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">公允价值变动净收益：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9177}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">投资净收益：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9178}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">对联营企业和合营企业的投资收益：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9179}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">营业利润：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9180}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">营业外收入：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9181}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">营业外支出：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9182}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">非流动资产损失：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9183}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">利润总额：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9184}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">所得税费用：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9185}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">净利润：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9186}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">基本每股收益：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9187}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">稀释每股收益：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.item9188}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBb2007ProfitAssign.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBb2007ProfitAssign.remarks}
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