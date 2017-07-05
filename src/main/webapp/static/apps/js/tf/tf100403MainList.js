var tf100403MainList = new function() {
	return {
		// 查看交易
		showTransaction : function() {
			var checkDatas  = getTableCheckedDatas("contentTable");
			var checkDataSize = checkDatas.length;
			if (!checkDatas || checkDataSize != 1) {
				alertx("请选择一条记录");
				return;
			}
			var transSerialNumber = checkDatas[0][6].trim();//获取传输报文流水号
			var map = {
					transSerialNumber : transSerialNumber
				}
			go(ctx + "/tf/tf100403Card/showTransaction?" + encodePram(map));
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
			confirmx('确认要上报异常开卡吗？', ctx + "/tf/tf100403Main/gen?transSerialNumber=" + encodeURIComponent(encodeURIComponent(transSerialNumbers)));
		},
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/tf/tf100403Main/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/tf/tf100403Main/formAdd");
		},
		// 修改
		modify : function() {
			tf100403MainDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			tf100403MainDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(transSerialNumber){
			var keyMap = {
				transSerialNumber : transSerialNumber
			}
			go(ctx + "/tf/tf100403Main/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出异常开卡数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/tf/tf100403Main/exportExcel");
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
		submitTf100403Main : function() {
			tf100403MainDetermine("SUB", returnSubmit);
		},
		// 通过
		viaTf100403Main : function() {
			tf100403MainDetermine("VIA", returnVia);
		},
		// 退回
		returnTf100403Main : function() {
			tf100403MainDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function tf100403MainDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "TF_100403_MAIN";  // 表名
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
	go(ctx + "/tf/tf100403Main/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	tf100403MainConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	tf100403MainConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	tf100403MainConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	tf100403MainConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function tf100403MainConfirmx(title, url){
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
	confirmx('确认要' + title + '该异常开卡吗？', ctx + "/tf/tf100403Main/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});