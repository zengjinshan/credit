var tf100404TranList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/tf/tf100404Tran/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			tf100404TranDetermine("EDT", returnAdd);
		},
		// 修改
		modify : function() {
			tf100404TranDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			tf100404TranDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(transSerialNumber,accountSerial,txId){
			var keyMap = {
				transSerialNumber : transSerialNumber
				,accountSerial : accountSerial
				,txId : txId
			}
			go(ctx + "/tf/tf100404Tran/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出涉案账户交易数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/tf/tf100404Tran/exportExcel");
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
		submitTf100404Tran : function() {
			tf100404TranDetermine("SUB", returnSubmit);
		},
		// 通过
		viaTf100404Tran : function() {
			tf100404TranDetermine("VIA", returnVia);
		},
		// 退回
		returnTf100404Tran : function() {
			tf100404TranDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function tf100404TranDetermine(operateType, returnFunction){
	debugger;
	var transSerialNumber = $('#tsn').val();
	var dataMap = "transSerialNumber=" + transSerialNumber;
	//根据主表的主键去查询四个状态
	$.ajax({
		url : ctx + "/tf/tf100404Main/findMainStatusByKey",
		data : dataMap,
		async : false,
		success : function(data) {
			debugger;
			if (data != 'null') {
				var tableName = "TF_100404_MAIN";  // 表名
				var regDataStatus = data.regDataStatus;  // 数据状态
				var regCheckStatus = data.regCheckStatus;  // 校验状态
				var regSendStatus = data.regSendStatus;  // 报送状态
				var regOperateStatus = data.regOperateStatus;  // 操作状态
				// 对数据状态、校验状态、报送状态、操作状态进行判断
				determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnFunction);
			}else{
				alertx("查找主表的4中状态失败!");
			}
		}
	});
}
/**
 * 新增 --在判断后进行调用
 */
function returnAdd(){
	debugger;
	var transSerialNumber = $('#tsn').val();
	var accountSerial =  $('#as').val();
	var Map = {
			transSerialNumber : transSerialNumber,
			accountSerial : accountSerial
		}
	go(ctx + "/tf/tf100404Tran/acctToTran?"+encodePram(Map));
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
		transSerialNumber : checkData[0]
		,accountSerial : checkData[1]
		,txId : checkData[2]
	}
	go(ctx + "/tf/tf100404Tran/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	tf100404TranConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	tf100404TranConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	tf100404TranConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	tf100404TranConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function tf100404TranConfirmx(title, url){
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("@_#");
	var keyMap = {
		transSerialNumber : checkData[0]
		,accountSerial : checkData[1]
		,txId : checkData[2]
	}
	confirmx('确认要' + title + '该涉案账户交易吗？', ctx + "/tf/tf100404Tran/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});