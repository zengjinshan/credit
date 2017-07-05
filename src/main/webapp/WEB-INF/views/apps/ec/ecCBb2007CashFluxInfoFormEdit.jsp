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
					<div class="controls">
						<form:input path="reportBaseId" htmlEscape="false" maxlength="13" class="input-large required digits" disabled="true"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">销售商品和提供劳务收到的现金：</label>
					<div class="controls">
						<form:input path="item9199" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收到的税费返还：</label>
					<div class="controls">
						<form:input path="item9200" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">收到其他与经营活动有关的现金：</label>
					<div class="controls">
						<form:input path="item9201" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营活动现金流入小计：</label>
					<div class="controls">
						<form:input path="item9202" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">购买商品、接受劳务支付的现金：</label>
					<div class="controls">
						<form:input path="item9203" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支付给职工以及为职工支付的现金：</label>
					<div class="controls">
						<form:input path="item9204" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">支付的各项税费：</label>
					<div class="controls">
						<form:input path="item9205" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支付其他与经营活动有关的现金：</label>
					<div class="controls">
						<form:input path="item9206" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">经营活动现金流出小计：</label>
					<div class="controls">
						<form:input path="item9207" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营活动产生的现金流量净额：</label>
					<div class="controls">
						<form:input path="item9208" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">收回投资所收到的现金：</label>
					<div class="controls">
						<form:input path="item9209" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">取得投资收益所收到的现金：</label>
					<div class="controls">
						<form:input path="item9210" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">处置固定资产无形资产和其他长期资产所收回的现金净额：</label>
					<div class="controls">
						<form:input path="item9211" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">处置子公司及其他营业单位收到的现金净额：</label>
					<div class="controls">
						<form:input path="item9212" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">收到其他与投资活动有关的现金：</label>
					<div class="controls">
						<form:input path="item9213" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资活动现金流入小计：</label>
					<div class="controls">
						<form:input path="item9214" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">购建固定资产无形资产和其他长期资产所支付的现金：</label>
					<div class="controls">
						<form:input path="item9215" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资所支付的现金：</label>
					<div class="controls">
						<form:input path="item9216" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">取得子公司及其他营业单位支付的现金净额：</label>
					<div class="controls">
						<form:input path="item9217" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支付其他与投资活动有关的现金：</label>
					<div class="controls">
						<form:input path="item9218" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">投资活动现金流出小计：</label>
					<div class="controls">
						<form:input path="item9219" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">投资活动产生的现金流量净额：</label>
					<div class="controls">
						<form:input path="item9220" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">吸收投资收到的现金：</label>
					<div class="controls">
						<form:input path="item9221" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">取得借款收到的现金：</label>
					<div class="controls">
						<form:input path="item9222" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">收到其他与筹资活动有关的现金：</label>
					<div class="controls">
						<form:input path="item9223" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">筹资活动现金流入小计：</label>
					<div class="controls">
						<form:input path="item9224" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">偿还债务所支付的现金：</label>
					<div class="controls">
						<form:input path="item9225" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">分配股利、利润或偿付利息所支付的现金：</label>
					<div class="controls">
						<form:input path="item9226" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">支付其他与筹资活动有关的现金：</label>
					<div class="controls">
						<form:input path="item9227" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">筹资活动现金流出小计：</label>
					<div class="controls">
						<form:input path="item9228" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">筹集活动产生的现金流量净额：</label>
					<div class="controls">
						<form:input path="item9229" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">汇率变动对现金及现金等价物的影响：</label>
					<div class="controls">
						<form:input path="item9230" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">现金及现金等价物净增加额：</label>
					<div class="controls">
						<form:input path="item9231" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">期初现金及现金等价物余额：</label>
					<div class="controls">
						<form:input path="item9232" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">期末现金及现金等价物余额：</label>
					<div class="controls">
						<form:input path="item9233" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">净利润：</label>
					<div class="controls">
						<form:input path="item9234" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">资产减值准备：</label>
					<div class="controls">
						<form:input path="item9235" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">固定资产折旧、油气资产折耗、生产性生物资产折旧：</label>
					<div class="controls">
						<form:input path="item9236" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">无形资产摊销：</label>
					<div class="controls">
						<form:input path="item9237" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">长期待摊费用摊销：</label>
					<div class="controls">
						<form:input path="item9238" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">待摊费用减少：</label>
					<div class="controls">
						<form:input path="item9239" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预提费用增加：</label>
					<div class="controls">
						<form:input path="item9240" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">处置固定资产无形资产和其他长期资产的损失：</label>
					<div class="controls">
						<form:input path="item9241" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">固定资产报废损失：</label>
					<div class="controls">
						<form:input path="item9242" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">公允价值变动损失：</label>
					<div class="controls">
						<form:input path="item9243" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务费用：</label>
					<div class="controls">
						<form:input path="item9244" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">投资损失：</label>
					<div class="controls">
						<form:input path="item9245" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">递延所得税资产减少：</label>
					<div class="controls">
						<form:input path="item9246" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">递延所得税负债增加：</label>
					<div class="controls">
						<form:input path="item9247" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">存货的减少：</label>
					<div class="controls">
						<form:input path="item9248" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">经营性应收项目的减少：</label>
					<div class="controls">
						<form:input path="item9249" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营性应付项目的增加：</label>
					<div class="controls">
						<form:input path="item9250" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">其他：</label>
					<div class="controls">
						<form:input path="item9251" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营活动产生的现金流量净额2：</label>
					<div class="controls">
						<form:input path="item9252" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">债务转为资本：</label>
					<div class="controls">
						<form:input path="item9253" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">一年内到期的可转换公司债券：</label>
					<div class="controls">
						<form:input path="item9254" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">融资租入固定资产：</label>
					<div class="controls">
						<form:input path="item9255" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他2：</label>
					<div class="controls">
						<form:input path="item9256" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">现金的期末余额：</label>
					<div class="controls">
						<form:input path="item9257" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">现金的期初余额：</label>
					<div class="controls">
						<form:input path="item9258" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">现金等价物的期末余额：</label>
					<div class="controls">
						<form:input path="item9259" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">现金等价物的期初余额：</label>
					<div class="controls">
						<form:input path="item9260" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">现金及现金等价物净增加额2：</label>
					<div class="controls">
						<form:input path="item9261" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls">
						<form:input path="multiTenancyId" htmlEscape="false" maxlength="20" class="input-large "/>
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
			<shiro:hasPermission name="ec:ecCBb2007CashFluxInfo:modify"><button class="btn_public" type="button" onclick="ecCBb2007CashFluxInfoForm.edit();"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>