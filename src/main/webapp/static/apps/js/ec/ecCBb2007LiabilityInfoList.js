var ecCBb2007LiabilityInfoList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/ec/ecCBb2007LiabilityInfo/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/ec/ecCBb2007LiabilityInfo/formAdd");
		},
		// 修改
		modify : function() {
			ecCBb2007LiabilityInfoDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			ecCBb2007LiabilityInfoDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(reportBaseId){
			var keyMap = {
				reportBaseId : reportBaseId
			}
			go(ctx + "/ec/ecCBb2007LiabilityInfo/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出企业征信-2007版资产负债信息数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/ec/ecCBb2007LiabilityInfo/exportExcel");
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
		submitEcCBb2007LiabilityInfo : function() {
			ecCBb2007LiabilityInfoDetermine("SUB", returnSubmit);
		},
		// 通过
		viaEcCBb2007LiabilityInfo : function() {
			ecCBb2007LiabilityInfoDetermine("VIA", returnVia);
		},
		// 退回
		returnEcCBb2007LiabilityInfo : function() {
			ecCBb2007LiabilityInfoDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function ecCBb2007LiabilityInfoDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "EC_C_BB_2007_LIABILITY_INFO";  // 表名
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
		reportBaseId : checkData[0]
	}
	go(ctx + "/ec/ecCBb2007LiabilityInfo/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	ecCBb2007LiabilityInfoConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	ecCBb2007LiabilityInfoConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	ecCBb2007LiabilityInfoConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	ecCBb2007LiabilityInfoConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function ecCBb2007LiabilityInfoConfirmx(title, url){
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("@_#");
	var keyMap = {
		reportBaseId : checkData[0]
	}
	confirmx('确认要' + title + '该企业征信-2007版资产负债信息吗？', ctx + "/ec/ecCBb2007LiabilityInfo/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});