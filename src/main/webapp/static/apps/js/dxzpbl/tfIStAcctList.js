var tfIStAcctList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/dxzpbl/tfIStAcct/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/dxzpbl/tfIStAcct/formAdd");
		},
		// 修改
		modify : function() {
			var checkDatas = getTableCheckedDatas("contentTable");  // 获取所选的数据
			if(!checkDatas || checkDatas.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var tableName = "TF_I_ST_ACCT";  // 表名
			var operateType = "EDT";  // 操作类型
			var regDataStatus = checkDatas[0][9];  // 数据状态
			var regCheckStatus = checkDatas[0][10];  // 校验状态
			var regSendStatus = checkDatas[0][11];  // 报送状态
			var regOperateStatus = checkDatas[0][12];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			//determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnEdit);
			returnEdit();
		},
		// 删除
		remove : function() {
			var checkDatas = getTableCheckedDatas("contentTable");  // 获取所选的数据
			if(!checkDatas || checkDatas.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var tableName = "TF_I_ST_ACCT";  // 表名
			var operateType = "EDT";  // 操作类型
			var regDataStatus = checkDatas[0][9];  // 数据状态
			var regCheckStatus = checkDatas[0][10];  // 校验状态
			var regSendStatus = checkDatas[0][11];  // 报送状态
			var regOperateStatus = checkDatas[0][12];  // 操作状态
			// 对数据状态、校验状态、报送状态、操作状态进行判断
			//determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnDelete);
			returnDelete();
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出可疑账户补录校验数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/dxzpbl/tfIStAcct/exportExcel");
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
	var custNo = checkData[1];
	var custAcctNum = checkData[2];
	go(ctx + "/dxzpbl/tfIStAcct/formEdit?dataDt=" + dataDt+ "&custNo=" + custNo+ "&custAcctNum=" + custAcctNum);
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
	var custAcctNum = checkData[2];
	confirmx('确认要删除该可疑账户补录校验吗？', ctx + "/dxzpbl/tfIStAcct/delete?dataDt=" + dataDt+ "&custNo=" + custNo+ "&custAcctNum=" + custAcctNum);
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});