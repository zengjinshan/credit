var fxqICrrCorpClassHisList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/fxqbl/fxqICrrCorpClassHis/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/fxqbl/fxqICrrCorpClassHis/formAdd");
		},
		// 修改
		modify : function() {
			fxqICrrCorpClassHisDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			fxqICrrCorpClassHisDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(custNo,startDate){
			var keyMap = {
				custNo : custNo
				,startDate : startDate
			}
			go(ctx + "/fxqbl/fxqICrrCorpClassHis/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出对公客户等级分类历史接口数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/fxqbl/fxqICrrCorpClassHis/exportExcel");
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
		submitFxqICrrCorpClassHis : function() {
			fxqICrrCorpClassHisDetermine("SUB", returnSubmit);
		},
		// 通过
		viaFxqICrrCorpClassHis : function() {
			fxqICrrCorpClassHisDetermine("VIA", returnVia);
		},
		// 退回
		returnFxqICrrCorpClassHis : function() {
			fxqICrrCorpClassHisDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function fxqICrrCorpClassHisDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "FXQ_I_CRR_CORP_CLASS_HIS";  // 表名
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
		custNo : checkData[0]
		,startDate : checkData[1]
	}
	go(ctx + "/fxqbl/fxqICrrCorpClassHis/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	fxqICrrCorpClassHisConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	fxqICrrCorpClassHisConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	fxqICrrCorpClassHisConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	fxqICrrCorpClassHisConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function fxqICrrCorpClassHisConfirmx(title, url){
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("@_#");
	var keyMap = {
		custNo : checkData[0]
		,startDate : checkData[1]
	}
	confirmx('确认要' + title + '该对公客户等级分类历史接口吗？', ctx + "/fxqbl/fxqICrrCorpClassHis/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});