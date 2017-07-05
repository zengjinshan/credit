<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>企业征信-事业单位收入支出信息管理</title>
	<meta name="decorator" content="default"/>
	<script src="${ctxStatic}/apps/js/ec/ecCBbUnitIncomeExpensesForm.js" type="text/javascript"></script>
</head>
<body>
	<br/>
	<form:form id="inputForm" modelAttribute="ecCBbUnitIncomeExpenses" action="${ctx}/ec/ecCBbUnitIncomeExpenses/update" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务基本信息ID：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.reportBaseId}
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">财政补助收入：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9330}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上级补助收入：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9331}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">附属单位缴款：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9332}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事业收入：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9333}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">预算外资金收入：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9334}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他收入：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9335}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事业收入小计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9336}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营收入：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9337}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">经营收入小计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9338}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">拨入专款：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9339}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">拨入专款小计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9340}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收入总计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9341}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">拨出经费：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9342}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上缴上级支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9343}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">对附属单位补助：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9344}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事业支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9345}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">财政补助支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9346}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预算外资金支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9347}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">销售税金：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9348}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结转自筹基建：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9349}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事业支出小计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9350}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9351}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">销售税金2：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9352}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营支出小计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9353}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">拨出专款：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9354}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">专款支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9355}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">专款小计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9356}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支出总计：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9357}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">事业结余：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9358}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">正常收入结余：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9359}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">收回以前年度事业支出：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9360}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营结余：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9361}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">以前年度经营亏损：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9362}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结余分配：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9363}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">应交所得税：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9364}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">提取专用基金：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9365}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">转入事业基金：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9366}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他结余分配：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.item9367}
					</div>
			 	</div>
		 		<div class="span6">
					<label class="control-label">多实体标识：</label>
					<div class="controls-view">
						${ecCBbUnitIncomeExpenses.multiTenancyId}
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span11">
					<label class="control-label">备注信息：</label>
					<div class="controls-view">
					   ${ecCBbUnitIncomeExpenses.remarks}
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