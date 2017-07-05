var ppsA01FromExamineInfoList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/ppsbl/ppsA01FromExamineInfo/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/ppsbl/ppsA01FromExamineInfo/formAdd");
		},
		// 修改
		modify : function() {
			ppsA01FromExamineInfoDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			ppsA01FromExamineInfoDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(dataDt,reportName,multiTenancyId,regOrgNo){
			var keyMap = {
				dataDt : dataDt
				,reportName : reportName
				,multiTenancyId : multiTenancyId
				,regOrgNo : regOrgNo
			}
			go(ctx + "/ppsbl/ppsA01FromExamineInfo/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出前台审批信息表数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/ppsbl/ppsA01FromExamineInfo/exportExcel");
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
		submitPpsA01FromExamineInfo : function() {
			ppsA01FromExamineInfoDetermine("SUB", returnSubmit);
		},
		// 通过
		viaPpsA01FromExamineInfo : function() {
			ppsA01FromExamineInfoDetermine("VIA", returnVia);
		},
		// 退回
		returnPpsA01FromExamineInfo : function() {
			ppsA01FromExamineInfoDetermine("RET", returnReturn);
		}
	}
};

/**
 * 操作前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function ppsA01FromExamineInfoDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "PPS_A01_FROM_EXAMINE_INFO";  // 表名
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
		,reportName : checkData[1]
		,multiTenancyId : checkData[2]
		,regOrgNo : checkData[3]
	}
	go(ctx + "/ppsbl/ppsA01FromExamineInfo/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	ppsA01FromExamineInfoConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	ppsA01FromExamineInfoConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	ppsA01FromExamineInfoConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	ppsA01FromExamineInfoConfirmx('退回', 'return');
}

/**
 * 确认请求
 * @param title  操作名称
 * @param url    URL后缀
 */
function ppsA01FromExamineInfoConfirmx(title, url){
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
		,reportName : checkData[1]
		,multiTenancyId : checkData[2]
		,regOrgNo : checkData[3]
	}
	confirmx('确认要' + title + '该前台审批信息表吗？', ctx + "/ppsbl/ppsA01FromExamineInfo/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});