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
	<form:form id="inputForm" modelAttribute="ecCBbUnitIncomeExpenses" action="${ctx}/ec/ecCBbUnitIncomeExpenses/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>		
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">财务基本信息ID：</label>
					<div class="controls">
						<form:input path="reportBaseId" htmlEscape="false" maxlength="13" class="input-large required digits"/>
						<span class="help-inline"><font color="red">*</font></span>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">财政补助收入：</label>
					<div class="controls">
						<form:input path="item9330" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上级补助收入：</label>
					<div class="controls">
						<form:input path="item9331" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">附属单位缴款：</label>
					<div class="controls">
						<form:input path="item9332" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事业收入：</label>
					<div class="controls">
						<form:input path="item9333" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">预算外资金收入：</label>
					<div class="controls">
						<form:input path="item9334" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他收入：</label>
					<div class="controls">
						<form:input path="item9335" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">事业收入小计：</label>
					<div class="controls">
						<form:input path="item9336" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营收入：</label>
					<div class="controls">
						<form:input path="item9337" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">经营收入小计：</label>
					<div class="controls">
						<form:input path="item9338" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">拨入专款：</label>
					<div class="controls">
						<form:input path="item9339" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">拨入专款小计：</label>
					<div class="controls">
						<form:input path="item9340" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">收入总计：</label>
					<div class="controls">
						<form:input path="item9341" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">拨出经费：</label>
					<div class="controls">
						<form:input path="item9342" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">上缴上级支出：</label>
					<div class="controls">
						<form:input path="item9343" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">对附属单位补助：</label>
					<div class="controls">
						<form:input path="item9344" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">事业支出：</label>
					<div class="controls">
						<form:input path="item9345" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">财政补助支出：</label>
					<div class="controls">
						<form:input path="item9346" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">预算外资金支出：</label>
					<div class="controls">
						<form:input path="item9347" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">销售税金：</label>
					<div class="controls">
						<form:input path="item9348" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结转自筹基建：</label>
					<div class="controls">
						<form:input path="item9349" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">事业支出小计：</label>
					<div class="controls">
						<form:input path="item9350" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营支出：</label>
					<div class="controls">
						<form:input path="item9351" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">销售税金2：</label>
					<div class="controls">
						<form:input path="item9352" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营支出小计：</label>
					<div class="controls">
						<form:input path="item9353" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">拨出专款：</label>
					<div class="controls">
						<form:input path="item9354" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">专款支出：</label>
					<div class="controls">
						<form:input path="item9355" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">专款小计：</label>
					<div class="controls">
						<form:input path="item9356" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">支出总计：</label>
					<div class="controls">
						<form:input path="item9357" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">事业结余：</label>
					<div class="controls">
						<form:input path="item9358" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">正常收入结余：</label>
					<div class="controls">
						<form:input path="item9359" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">收回以前年度事业支出：</label>
					<div class="controls">
						<form:input path="item9360" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">经营结余：</label>
					<div class="controls">
						<form:input path="item9361" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">以前年度经营亏损：</label>
					<div class="controls">
						<form:input path="item9362" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">结余分配：</label>
					<div class="controls">
						<form:input path="item9363" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">应交所得税：</label>
					<div class="controls">
						<form:input path="item9364" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">提取专用基金：</label>
					<div class="controls">
						<form:input path="item9365" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
		 		<div class="span6">	 
					<label class="control-label">转入事业基金：</label>
					<div class="controls">
						<form:input path="item9366" htmlEscape="false" class="input-large "/>
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
		 	<div class="container-fluid">
		 		<div class="span6">
					<label class="control-label">其他结余分配：</label>
					<div class="controls">
						<form:input path="item9367" htmlEscape="false" class="input-large "/>
					</div>
			 	</div>
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
			<shiro:hasPermission name="ec:ecCBbUnitIncomeExpenses:add"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
			<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
		</div>
	</form:form>
</body>
</html>