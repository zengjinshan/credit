var fxqIBtRelationList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/fxq/fxqIBtRelation/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/fxq/fxqIBtRelation/formAdd");
		},
		// 修改
		modify : function() {
			var checkDatas = getTableCheckedDatas("contentTable");  // 获取所选的数据
			if(!checkDatas || checkDatas.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var tableName = "FXQ_I_BT_RELATION";  // 表名
			var operateType = "EDT";  // 操作类型
			var regDataStatus = checkDatas[0][2];  // 数据状态
			var regCheckStatus = checkDatas[0][3];  // 校验状态
			var regSendStatus = checkDatas[0][4];  // 报送状态
			var regOperateStatus = checkDatas[0][5];  // 操作状态
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
			var tableName = "FXQ_I_BT_RELATION";  // 表名
			var operateType = "EDT";  // 操作类型
			var regDataStatus = checkDatas[0][2];  // 数据状态
			var regCheckStatus = checkDatas[0][3];  // 校验状态
			var regSendStatus = checkDatas[0][4];  // 报送状态
			var regOperateStatus = checkDatas[0][5];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnDelete);
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出大额关系接口表数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/fxq/fxqIBtRelation/exportExcel");
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
		}
	}
};

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
	var reportId = checkData[1];
	var txId = checkData[2];
	go(ctx + "/fxq/fxqIBtRelation/formEdit?dataDt=" + dataDt+ "&reportId=" + reportId+ "&txId=" + txId);
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
	var reportId = checkData[1];
	var txId = checkData[2];
	confirmx('确认要删除该大额关系接口表成功吗？', ctx + "/fxq/fxqIBtRelation/delete?dataDt=" + dataDt+ "&reportId=" + reportId+ "&txId=" + txId);
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});