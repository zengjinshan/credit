<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-2007版资产负债信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBb2007LiabilityInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBb2007LiabilityInfo" action="${ctx}/ec/ecCBb2007LiabilityInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务基本信息ID：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.reportBaseId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">货币资金：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9100}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">交易性金融资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9101}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应收票据：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9102}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应收账款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9103}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">预付账款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9104}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应收利息：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9105}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应收股利：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9106}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他应收款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9107}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">存货：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9108}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一年内到期的非流动资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9109}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他流动资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9110}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">流动资产合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9111}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">可供出售的金融资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9112}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">持有至到期投资：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9113}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">长期股权投资：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9114}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">长期应收款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9115}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">投资性房地产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9116}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">固定资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9117}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">在建工程：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9118}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">工程物资：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9119}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">固定资产清理：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9120}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">生产性生物资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9121}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">油气资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9122}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">无形资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9123}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">开发支出：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9124}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">商誉：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9125}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">长期待摊费用：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9126}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">递延所得税资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9127}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他非流动资产：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9128}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">非流动资产合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9129}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资产总计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9130}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">短期借款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9131}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">交易性金融负债：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9132}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应付票据：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9133}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应付账款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9134}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预收账款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9135}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应付利息：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9136}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应付职工薪酬：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9137}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应交税费：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9138}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应付股利：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9139}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他应付款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9140}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一年内到期的非流动负债：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9141}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他流动负债：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9142}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">流动负债合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9143}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">长期借款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9144}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">应付债券：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9145}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">长期应付款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9146}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">专项应付款：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9147}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">预计负债：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9148}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">递延所得税负债：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9149}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他非流动负债：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9150}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">非流动负债合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9151}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">负债合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9152}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">实收资本（或股本）：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9153}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资本公积：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9154}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">减：库存股：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9155}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">盈余公积：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9156}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">未分配利润：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9157}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">所有者权益合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9158}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">负债和所有者权益合计：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.item9159}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBb2007LiabilityInfo.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBb2007LiabilityInfo.remarks}
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