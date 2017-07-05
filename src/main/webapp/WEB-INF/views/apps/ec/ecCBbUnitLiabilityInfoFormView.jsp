<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-事业单位资产负债信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbUnitLiabilityInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbUnitLiabilityInfo" action="${ctx}/ec/ecCBbUnitLiabilityInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务基本信息ID：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.reportBaseId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">现金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9271}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">银行存款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9272}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应收票据：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9273}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应收账款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9274}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">预付账款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9275}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他应收款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9276}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">材料：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9277}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">产成品：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9278}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对外投资：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9279}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">固定资产：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9280}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">无形资产：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9281}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资产合计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9282}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">拨出经费：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9283}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">拨出专款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9284}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">专款支出：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9285}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事业支出：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9286}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经营支出：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9287}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">成本费用：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9288}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">销售税金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9289}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上缴上级支出：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9290}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对附属单位补助：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9291}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结转自筹基建：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9292}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">支出合计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9293}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">资产部类总计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9294}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">借记款项：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9295}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应付票据：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9296}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应付账款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9297}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预收账款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9298}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他应付款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9299}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应缴预算款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9300}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应缴财政专户款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9301}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应交税金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9302}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">负债合计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9303}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事业基金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9304}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">一般基金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9305}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资基金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9306}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">固定基金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9307}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">专用基金：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9308}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事业结余：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9309}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营结余：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9310}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">净资产合计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9311}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财政补助收入：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9312}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">上级补助收入：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9313}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">拨入专款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9314}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事业收入：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9315}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营收入：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9316}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">附属单位缴款：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9317}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他收入：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9318}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">收入合计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9319}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">负债部类总计：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.item9320}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBbUnitLiabilityInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBbUnitLiabilityInfo.remarks}
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