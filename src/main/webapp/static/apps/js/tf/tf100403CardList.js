var tf100403CardList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/tf/tf100403Card/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			tf100403CardDetermine("EDT", returnAdd);
		},
		// 修改
		modify : function() {
			tf100403CardDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			tf100403CardDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(transSerialNumber,cardNumber){
			var keyMap = {
				transSerialNumber : transSerialNumber
				,cardNumber : cardNumber
			}
			go(ctx + "/tf/tf100403Card/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出异常开卡卡表数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/tf/tf100403Card/exportExcel");
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
		submitTf100403Card : function() {
			tf100403CardDetermine("SUB", returnSubmit);
		},
		// 通过
		viaTf100403Card : function() {
			tf100403CardDetermine("VIA", returnVia);
		},
		// 退回
		returnTf100403Card : function() {
			tf100403CardDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function tf100403CardDetermine(operateType, returnFunction){
	var transSerialNumber = $('#tsn').val();
	var dataMap = "transSerialNumber=" + transSerialNumber;
	//根据主表的主键去查询四个状态
	$.ajax({
		url : ctx + "/tf/tf100403Main/findMainStatusByKey",
		data : dataMap,
		async : false,
		success : function(data) {
			if (data != 'null') {
				var tableName = "TF_100403_MAIN";  // 表名
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
	go(ctx + "/tf/tf100403Card/mainToAcct?"+encodePram(keyMap));
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
		,cardNumber : checkData[1]
	}
	go(ctx + "/tf/tf100403Card/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	tf100403CardConfirmx('删除', 'delete');
}
/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	tf100403CardConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	tf100403CardConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	tf100403CardConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function tf100403CardConfirmx(title, url){
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
		,cardNumber : checkData[1]
	}
	confirmx('确认要' + title + '该异常开卡卡表吗？', ctx + "/tf/tf100403Card/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});