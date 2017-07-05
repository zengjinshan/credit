var tf100405AcctList = new function() {
	return {
		// 查看异常事件交易
		showTransaction : function() {
			var checkDatas  = getTableCheckedDatas("contentTable");
			
			if (!checkDatas || checkDatas.length != 1) {
				alertx("请选择一条记录");
				return;
			}
			var checkDataSize = checkDatas.length;
			var transSerialNumber = checkDatas[0][4].trim();//获取传输报文流水号
			var accountSerial = checkDatas[0][5].trim();//一般(子)账户序号
			var map = {
					transSerialNumber : transSerialNumber,
					accountSerial : accountSerial
				}
			go(ctx + "/tf/tf100405Tran/showTransaction?" + encodePram(map));
		},
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/tf/tf100405Acct/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			tf100405AcctDetermine("EDT", returnAdd);
		},
		// 修改
		modify : function() {
			tf100405AcctDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			tf100405AcctDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(transSerialNumber,accountSerial){
			var keyMap = {
				transSerialNumber : transSerialNumber
				,accountSerial : accountSerial
			}
			go(ctx + "/tf/tf100405Acct/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出异常事件子账户数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/tf/tf100405Acct/exportExcel");
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
		submitTf100405Acct : function() {
			tf100405AcctDetermine("SUB", returnSubmit);
		},
		// 通过
		viaTf100405Acct : function() {
			tf100405AcctDetermine("VIA", returnVia);
		},
		// 退回
		returnTf100405Acct : function() {
			tf100405AcctDetermine("RET", returnReturn);
		}
	}
};
/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function tf100405AcctDetermine(operateType, returnFunction){
	var transSerialNumber = $('#tsn').val();
	var dataMap = "transSerialNumber=" + transSerialNumber;
	//根据主表的主键去查询四个状态
	$.ajax({
		url : ctx + "/tf/tf100405Main/findMainStatusByKey",
		data : dataMap,
		async : false,
		success : function(data) {
			if (data != 'null') {
				var tableName = "TF_100405_MAIN";  // 表名
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
	var transSerialNumber = $('#tsn').val();
	var keyMap = {
			transSerialNumber : transSerialNumber
		}
	go(ctx + "/tf/tf100405Acct/mainToAcct?"+encodePram(keyMap));
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
	}
	go(ctx + "/tf/tf100405Acct/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	tf100405AcctConfirmx('删除', 'delete');
}
/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	tf100405AcctConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	tf100405AcctConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	tf100405AcctConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function tf100405AcctConfirmx(title, url){
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
	}
	confirmx('确认要' + title + '该异常事件子账户吗？', ctx + "/tf/tf100405Acct/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});