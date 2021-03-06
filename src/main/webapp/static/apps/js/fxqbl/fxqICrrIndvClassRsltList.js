var fxqICrrIndvClassRsltList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/fxqbl/fxqICrrIndvClassRslt/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/fxqbl/fxqICrrIndvClassRslt/formAdd");
		},
		// 修改
		modify : function() {
			fxqICrrIndvClassRsltDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			fxqICrrIndvClassRsltDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(custNo,classResultType,dataDt){
			var keyMap = {
				custNo : custNo
				,classResultType : classResultType
				,dataDt : dataDt
			}
			go(ctx + "/fxqbl/fxqICrrIndvClassRslt/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出对私客户等级分类结果接口数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/fxqbl/fxqICrrIndvClassRslt/exportExcel");
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
		submitFxqICrrIndvClassRslt : function() {
			fxqICrrIndvClassRsltDetermine("SUB", returnSubmit);
		},
		// 通过
		viaFxqICrrIndvClassRslt : function() {
			fxqICrrIndvClassRsltDetermine("VIA", returnVia);
		},
		// 退回
		returnFxqICrrIndvClassRslt : function() {
			fxqICrrIndvClassRsltDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function fxqICrrIndvClassRsltDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "FXQ_I_CRR_INDV_CLASS_RSLT";  // 表名
	var checkData = checkDataIds[0].split("@_#");
	var regDataStatus = checkData[3];  // 数据状态
	var regCheckStatus = checkData[4];  // 校验状态
	var regSendStatus = checkData[5];  // 报送状态
	var regOperateStatus = checkData[6];  // 操作状态
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
		,classResultType : checkData[1]
		,dataDt : checkData[2]
	}
	go(ctx + "/fxqbl/fxqICrrIndvClassRslt/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	fxqICrrIndvClassRsltConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	fxqICrrIndvClassRsltConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	fxqICrrIndvClassRsltConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	fxqICrrIndvClassRsltConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function fxqICrrIndvClassRsltConfirmx(title, url){
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
		,classResultType : checkData[1]
		,dataDt : checkData[2]
	}
	confirmx('确认要' + title + '该对私客户等级分类结果接口吗？', ctx + "/fxqbl/fxqICrrIndvClassRslt/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});