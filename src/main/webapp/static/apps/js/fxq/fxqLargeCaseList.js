var fxqLargeCaseList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/fxq/fxqLargeCase/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/fxq/fxqLargeCase/formAdd");
		},
		// 修改
		modify : function() {
			var checkDatas = getTableCheckedDatas("contentTable");  // 获取所选的数据
			if(!checkDatas || checkDatas.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var tableName = "FXQ_I_BT_CUSTOMER";  // 表名
			var operateType = "EDT";  // 操作类型
			var regDataStatus = checkDatas[0][0];  // 数据状态
			var regCheckStatus = checkDatas[0][1];  // 校验状态
			var regSendStatus = checkDatas[0][2];  // 报送状态
			var regOperateStatus = checkDatas[0][3];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnEdit);
		},
		// 删除
		remove : function() {
			var checkDatas = getTableCheckedDatas("contentTable");  // 获取所选的数据
			if(!checkDatas || checkDatas.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var tableName = "FXQ_I_BT_CUSTOMER";  // 表名
			var operateType = "EDT";  // 操作类型
			var regDataStatus = checkDatas[0][0];  // 数据状态
			var regCheckStatus = checkDatas[0][1];  // 校验状态
			var regSendStatus = checkDatas[0][2];  // 报送状态
			var regOperateStatus = checkDatas[0][3];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnDelete);
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出大额案例数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/fxq/fxqLargeCase/exportExcel");
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
		// 排除
		exclude : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			
			var tableName = "FXQ_I_BT_CUSTOMER";  // 表名
			var operateType = "EXC";  // 操作类型
			// 对主键进行切割
			var checkData = checkDataIds[0].split("_");
			var regDataStatus = checkData[3];  // 数据状态
			var regCheckStatus = checkData[4];  // 校验状态
			var regSendStatus = checkData[5];  // 报送状态
			var regOperateStatus = checkData[6];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnExclude);
//			returnExclude();
		},
		// 提交
		submit : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			
			var tableName = "FXQ_I_BT_CUSTOMER";  // 表名
			var operateType = "SUB";  // 操作类型
			// 对主键进行切割
			var checkData = checkDataIds[0].split("_");
			var regDataStatus = checkData[3];  // 数据状态
			var regCheckStatus = checkData[4];  // 校验状态
			var regSendStatus = checkData[5];  // 报送状态
			var regOperateStatus = checkData[6];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnSubmit);
			
		},
		// 退回
		back : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			
			var tableName = "FXQ_I_BT_CUSTOMER";  // 表名
			var operateType = "RET";  // 操作类型
			// 对主键进行切割
			var checkData = checkDataIds[0].split("_");
			var regDataStatus = checkData[3];  // 数据状态
			var regCheckStatus = checkData[4];  // 校验状态
			var regSendStatus = checkData[5];  // 报送状态
			var regOperateStatus = checkData[6];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnBack);
		},
		// 通过
		pass : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			
			var tableName = "FXQ_I_BT_CUSTOMER";  // 表名
			var operateType = "VIA";  // 操作类型
			// 对主键进行切割
			var checkData = checkDataIds[0].split("_");
			var regDataStatus = checkData[3];  // 数据状态
			var regCheckStatus = checkData[4];  // 校验状态
			var regSendStatus = checkData[5];  // 报送状态
			var regOperateStatus = checkData[6];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnPass);
			
		},
		// 查看交易
		showTransaction : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			// 对主键进行切割
			var checkData = checkDataIds[0].split("_");
			var dataDt = checkData[0];
			var custNo = checkData[1];
			var hhTxFeaCd = checkData[2];  //特征码
			var map={
					dataDt:dataDt,
					custNo:custNo,
					hhTxFeaCd:hhTxFeaCd
			}
			go(ctx + "/fxq/fxqLargeTransaction/list?"+encodePram(map));
		},
		//预览
		viewXml:function(){
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			// 对主键进行切割
			var checkData = checkDataIds[0].split("_");
			var dataDt = checkData[0];
			var custNo = checkData[1];
			var hhTxFeaCd = checkData[2];  //特征码
			var map={
					dataDt:dataDt,
					custNo:custNo,
					hhTxFeaCd:hhTxFeaCd
			}
			
			$.jBox.open("iframe:"+ctx+"/fxq/showBHxml?"+encodePram(map),"报文预览",850,$(top.document).height()-240,{buttons:{"关闭":true}});
		}
	}
};

/**
 * 排除 --在判断后进行调用
 */
function returnExclude(){
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("_");
	var dataDt = checkData[0];
	var custNo = checkData[1];
	var operateType = "EXC";
	var hhTxFeaCd = checkData[2];  //特征码
	var map={
			dataDt:dataDt,
			custNo:custNo,
			hhTxFeaCd:hhTxFeaCd,
			operateType:operateType
	}
	confirmx('确认要排除该大额案例吗？', ctx + "/fxq/fxqLargeCase/exclude?"+encodePram(map));
}
/**
 * 提交 --在判断后进行调用
 */
function returnSubmit(){
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("_");
	var dataDt = checkData[0];
	var custNo = checkData[1];
	var operateType = "SUB";
	var hhTxFeaCd = checkData[2];  //特征码
	var map={
			dataDt:dataDt,
			custNo:custNo,
			hhTxFeaCd:hhTxFeaCd,
			operateType:operateType
	}
	confirmx('确认要提交该大额案例吗？', ctx + "/fxq/fxqLargeCase/submit?"+encodePram(map));
}
/**
 * 退回 --在判断后进行调用
 */
function returnBack(){
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("_");
	var dataDt = checkData[0];
	var custNo = checkData[1];
	var operateType = "RET";
	var hhTxFeaCd = checkData[2];  //特征码
	var map={
			dataDt:dataDt,
			custNo:custNo,
			hhTxFeaCd:hhTxFeaCd,
			operateType:operateType
	}
	confirmx('确认要退回该大额案例吗？', ctx + "/fxq/fxqLargeCase/back?"+encodePram(map));
}
/**
 * 通过 --在判断后进行调用
 */
function returnPass(){
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("_");
	var dataDt = checkData[0];
	var custNo = checkData[1];
	var operateType = "VIA";
	var hhTxFeaCd = checkData[2];  //特征码
	var map={
			dataDt:dataDt,
			custNo:custNo,
			hhTxFeaCd:hhTxFeaCd,
			operateType:operateType
	}
	confirmx('确认要通过该大额案例吗？', ctx + "/fxq/fxqLargeCase/pass?"+encodePram(map));
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
	var dataDt = checkData[0];
	var custNo = checkData[1];
	go(ctx + "/fxq/fxqLargeCase/formEdit?dataDt=" + dataDt+ "&custNo=" + custNo);
}

/**
 * 删除 --在判断后进行调用
 */
function returnDelete() {
	// 获取所有的主键
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	// 对主键进行切割
	var checkData = checkDataIds[0].split("_");
	var dataDt = checkData[0];
	var custNo = checkData[1];
	confirmx('确认要删除该大额案例吗？', ctx + "/fxq/fxqLargeCase/delete?dataDt=" + dataDt+ "&custNo=" + custNo);
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});