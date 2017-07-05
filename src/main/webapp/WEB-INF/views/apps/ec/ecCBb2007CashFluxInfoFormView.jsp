<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-2007版现金流量信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBb2007CashFluxInfoForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBb2007CashFluxInfo" action="${ctx}/ec/ecCBb2007CashFluxInfo/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务基本信息ID：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.reportBaseId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">销售商品和提供劳务收到的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9199}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收到的税费返还：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9200}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">收到其他与经营活动有关的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9201}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营活动现金流入小计：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9202}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">购买商品、接受劳务支付的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9203}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支付给职工以及为职工支付的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9204}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">支付的各项税费：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9205}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支付其他与经营活动有关的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9206}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经营活动现金流出小计：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9207}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营活动产生的现金流量净额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9208}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">收回投资所收到的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9209}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">取得投资收益所收到的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9210}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">处置固定资产无形资产和其他长期资产所收回的现金净额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9211}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">处置子公司及其他营业单位收到的现金净额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9212}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">收到其他与投资活动有关的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9213}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资活动现金流入小计：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9214}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">购建固定资产无形资产和其他长期资产所支付的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9215}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资所支付的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9216}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">取得子公司及其他营业单位支付的现金净额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9217}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支付其他与投资活动有关的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9218}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">投资活动现金流出小计：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9219}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资活动产生的现金流量净额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9220}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">吸收投资收到的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9221}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">取得借款收到的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9222}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">收到其他与筹资活动有关的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9223}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">筹资活动现金流入小计：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9224}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">偿还债务所支付的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9225}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分配股利、利润或偿付利息所支付的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9226}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">支付其他与筹资活动有关的现金：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9227}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">筹资活动现金流出小计：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9228}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">筹集活动产生的现金流量净额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9229}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇率变动对现金及现金等价物的影响：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9230}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">现金及现金等价物净增加额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9231}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期初现金及现金等价物余额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9232}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">期末现金及现金等价物余额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9233}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">净利润：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9234}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">资产减值准备：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9235}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">固定资产折旧、油气资产折耗、生产性生物资产折旧：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9236}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">无形资产摊销：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9237}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">长期待摊费用摊销：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9238}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">待摊费用减少：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9239}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预提费用增加：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9240}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">处置固定资产无形资产和其他长期资产的损失：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9241}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">固定资产报废损失：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9242}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">公允价值变动损失：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9243}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务费用：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9244}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">投资损失：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9245}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">递延所得税资产减少：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9246}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">递延所得税负债增加：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9247}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">存货的减少：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9248}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经营性应收项目的减少：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9249}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营性应付项目的增加：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9250}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">其他：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9251}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营活动产生的现金流量净额2：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9252}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">债务转为资本：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9253}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一年内到期的可转换公司债券：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9254}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">融资租入固定资产：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9255}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他2：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9256}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">现金的期末余额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9257}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">现金的期初余额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9258}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">现金等价物的期末余额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9259}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">现金等价物的期初余额：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9260}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">现金及现金等价物净增加额2：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.item9261}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBb2007CashFluxInfo.multiTenancyId}
					</div>
			 	</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBb2007CashFluxInfo.remarks}
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