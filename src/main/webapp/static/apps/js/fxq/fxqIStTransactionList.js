var fxqIStTransactionList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/fxq/fxqIStTransaction/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/fxq/fxqIStTransaction/formAdd");
		},
		// 修改
		modify : function() {
			fxqIStTransactionDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			fxqIStTransactionDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(dataDt,custNo,custAcctNum,txId){
			var keyMap = {
				dataDt : dataDt
				,custNo : custNo
				,custAcctNum : custAcctNum
				,txId : txId
			}
			go(ctx + "/fxq/fxqIStTransaction/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出可疑交易补录校验数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/fxq/fxqIStTransaction/exportExcel");
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
		submitFxqIStTransaction : function() {
			fxqIStTransactionDetermine("SUB", returnSubmit);
		},
		// 通过
		viaFxqIStTransaction : function() {
			fxqIStTransactionDetermine("VIA", returnVia);
		},
		// 退回
		returnFxqIStTransaction : function() {
			fxqIStTransactionDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function fxqIStTransactionDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "FXQ_I_ST_TRANSACTION";  // 表名
	var checkData = checkDataIds[0].split("@_#");
	var regDataStatus = checkData[4];  // 数据状态
	var regCheckStatus = checkData[5];  // 校验状态
	var regSendStatus = checkData[6];  // 报送状态
	var regOperateStatus = checkData[7];  // 操作状态
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
		dataDt : checkData[0]
		,custNo : checkData[1]
		,custAcctNum : checkData[2]
		,txId : checkData[3]
	}
	go(ctx + "/fxq/fxqIStTransaction/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	fxqIStTransactionConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	fxqIStTransactionConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	fxqIStTransactionConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	fxqIStTransactionConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function fxqIStTransactionConfirmx(title, url){
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("@_#");
	var keyMap = {
		dataDt : checkData[0]
		,custNo : checkData[1]
		,custAcctNum : checkData[2]
		,txId : checkData[3]
	}
	confirmx('确认要' + title + '该可疑交易补录校验吗？', ctx + "/fxq/fxqIStTransaction/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});