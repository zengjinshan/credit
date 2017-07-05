var pcIImnMsgBasDatList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/pc/pcIImnMsgBasDat/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/pc/pcIImnMsgBasDat/formAdd");
		},
		// 修改
		modify : function() {
			pcIImnMsgBasDatDetermine("EDT", returnEdit);
		},
		// 删除
		remove : function() {
			pcIImnMsgBasDatDetermine("DEL", returnDelete);
		},
		// 查看超链接
		formView : function(aaBusiNo){
			var keyMap = {
				aaBusiNo : aaBusiNo
			}
			go(ctx + "/pc/pcIImnMsgBasDat/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出个人征信数据报送层数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/pc/pcIImnMsgBasDat/exportExcel");
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
		submitPcIImnMsgBasDat : function() {
			pcIImnMsgBasDatDetermine("SUB", returnSubmit);
		},
		// 通过
		viaPcIImnMsgBasDat : function() {
			pcIImnMsgBasDatDetermine("VIA", returnVia);
		},
		// 退回
		returnPcIImnMsgBasDat : function() {
			pcIImnMsgBasDatDetermine("RET", returnReturn);
		}
	}
};

/**
 * 前置判断
 * @param operateType   操作类型
 * @param returnReturn  返回执行函数
 */
function pcIImnMsgBasDatDetermine(operateType, returnFunction){
	var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	var tableName = "PC_I_IMN_MSG_BAS_DAT";  // 表名
	var checkData = checkDataIds[0].split("_");
	var regDataStatus = checkData[1];  // 数据状态
	var regCheckStatus = checkData[2];  // 校验状态
	var regSendStatus = checkData[3];  // 报送状态
	var regOperateStatus = checkData[4];  // 操作状态
	// 调用公共前置判断
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
	var checkData = checkDataIds[0].split("_");
	var keyMap = {
		aaBusiNo : checkData[0]
	}
	go(ctx + "/pc/pcIImnMsgBasDat/formEdit?" + encodePram(keyMap));
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	pcIImnMsgBasDatConfirmx('删除', 'delete');
}

/**
 * 提交 --在判断后进行调用
 */
function returnSubmit() {
	pcIImnMsgBasDatConfirmx('提交', 'submit');
}

/**
 * 通过 --在判断后进行调用
 */
function returnVia() {
	pcIImnMsgBasDatConfirmx('通过', 'via');
}

/**
 * 退回 --在判断后进行调用
 */
function returnReturn() {
	pcIImnMsgBasDatConfirmx('退回', 'return');
}


/**
 * 确认请求
 * @param title
 * @param url
 */
function pcIImnMsgBasDatConfirmx(title, url){
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("_");
	var keyMap = {
		aaBusiNo : checkData[0]
	}
	confirmx('确认要' + title + '该个人征信数据报送层吗？', ctx + "/pc/pcIImnMsgBasDat/" + url + "?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});