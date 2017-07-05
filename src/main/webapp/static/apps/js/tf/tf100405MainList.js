var tf100405MainList = new function() {
	return {
		// 查看交易
		showTransaction : function() {
			var checkDatas  = getTableCheckedDatas("contentTable");
			if (!checkDatas || checkDatas.length != 1) {
				alertx("请选择一条记录");
				return;
			}
			var checkDataSize = checkDatas.length;
			var transSerialNumber = checkDatas[0][4].trim();//获取传输报文流水号
			var map = {
					transSerialNumber : transSerialNumber
				}
			go(ctx + "/tf/tf100405Acct/showTransaction?" + encodePram(map));
		},
		// 生成报文
		gen : function(){
			var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
			if(!checkDataIds || checkDataIds.length < 1){
				alertx("请选择一条记录");
				return ;
			}
			var transSerialNumbers = '';
			for(var i = 0; i < checkDataIds.length; i++){
				var transSerialNumber = checkDataIds[i].split("@_#");
				transSerialNumbers += transSerialNumber[0] + ';';
			}
			confirmx('确认要上报异常事件吗？', ctx + "/tf/tf100405Main/gen?transSerialNumber=" + encodeURIComponent(encodeURIComponent(transSerialNumbers)));
		},
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/tf/tf100405Main/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/tf/tf100405Main/formAdd");
		},
		// 修改
		modify : function() {
			tf100405MainDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			tf100405MainDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(transSerialNumber){
			var keyMap = {
				transSerialNumber : transSerialNumber
			}
			go(ctx + "/tf/tf100405Main/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出异常事件数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/tf/tf100405Main/exportExcel");
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
		submitTf100405Main : function() {
			tf100405MainDetermine("SUB", returnSubmit);
		},
		// 通过
		viaTf100405Main : function() {
			tf100405MainDetermine("VIA", returnVia);
		},
		// 退回
		returnTf100405Main : function() {
			tf100405MainDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function tf100405MainDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "TF_100405_MAIN";  // 表名
	var checkData = checkDataIds[0].split("@_#");
	var regDataStatus = checkData[1];  // 数据状态
	var regCheckStatus = checkData[2];  // 校验状态
	var regSendStatus = checkData[3];  // 报送状态
	var regOperateStatus = checkData[4];  // 操作状态
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
		transSerialNumber : checkData[0]
	}
	go(ctx + "/tf/tf100405Main/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	tf100405MainConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	tf100405MainConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	tf100405MainConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	tf100405MainConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function tf100405MainConfirmx(title, url){
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
	}
	confirmx('确认要' + title + '该异常事件吗？', ctx + "/tf/tf100405Main/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});