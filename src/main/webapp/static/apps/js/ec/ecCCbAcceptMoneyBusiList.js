var ecCCbAcceptMoneyBusiList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/ec/ecCCbAcceptMoneyBusi/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/ec/ecCCbAcceptMoneyBusi/formAdd");
		},
		// 修改
		modify : function() {
			ecCCbAcceptMoneyBusiDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			ecCCbAcceptMoneyBusiDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(occurDate,loanNum){
			var keyMap = {
				occurDate : occurDate
				,loanNum : loanNum
			}
			go(ctx + "/ec/ecCCbAcceptMoneyBusi/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出企业征信-承兑汇票业务数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/ec/ecCCbAcceptMoneyBusi/exportExcel");
					$("#searchForm").submit();
				}
			}, {
				buttonsFocus : 1
			});
			top.$('.jbox-body .jbox-icon').css('top', '55px');
		},
		// 导入Excel数据
		importExcel : function() {
			$.jBox($("#importBox").html(), {
				title : "导入数据",
				buttons : {
					"关闭" : true
				},
				bottomText : "导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"
			});
		},
		// 提交
		submitEcCCbAcceptMoneyBusi : function() {
			ecCCbAcceptMoneyBusiDetermine("SUB", returnSubmit);
		},
		// 通过
		viaEcCCbAcceptMoneyBusi : function() {
			ecCCbAcceptMoneyBusiDetermine("VIA", returnVia);
		},
		// 退回
		returnEcCCbAcceptMoneyBusi : function() {
			ecCCbAcceptMoneyBusiDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function ecCCbAcceptMoneyBusiDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "EC_C_CB_ACCEPT_MONEY_BUSI";  // 表名
	var checkData = checkDataIds[0].split("@_#");
	var regDataStatus = checkData[2];  // 数据状态
	var regCheckStatus = checkData[3];  // 校验状态
	var regSendStatus = checkData[4];  // 报送状态
	var regOperateStatus = checkData[5];  // 操作状态
	// 对数据状态、校验状态、报送状态、操作状态进行判断
	determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnFunction);
}

/**
 * 修改 --在判断后进行调用
 */
function returnEdit() {
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("@_#");
	var keyMap = {
		occurDate : checkData[0]
		,loanNum : checkData[1]
	}
	go(ctx + "/ec/ecCCbAcceptMoneyBusi/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	ecCCbAcceptMoneyBusiConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	ecCCbAcceptMoneyBusiConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	ecCCbAcceptMoneyBusiConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	ecCCbAcceptMoneyBusiConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function ecCCbAcceptMoneyBusiConfirmx(title, url){
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("@_#");
	var keyMap = {
		occurDate : checkData[0]
		,loanNum : checkData[1]
	}
	confirmx('确认要' + title + '该企业征信-承兑汇票业务吗？', ctx + "/ec/ecCCbAcceptMoneyBusi/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});