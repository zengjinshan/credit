var ppsA01ResultAreaDqDataList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/pps/ppsA01ResultAreaDqData/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/pps/ppsA01ResultAreaDqData/formAdd");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			returnEdit();
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");  // 获取所选的数据
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			returnDelete();
		},
		// 查看超链接
		formView : function(dataDt,reportName,inOrgCd,inOrgName,outOrgCd,outOrgName){
			var keyMap = {
				dataDt : dataDt
				,reportName : reportName
				,inOrgCd : inOrgCd
				,inOrgName : inOrgName
				,outOrgCd : outOrgCd
				,outOrgName : outOrgName
			}
			go(ctx + "/pps/ppsA01ResultAreaDqData/formView?" + encodePram(keyMap));
		},
		// 导出Excel
		exportExcel : function() {
			top.$.jBox.confirm("确认要导出支付统计流量流向(地区_地区)数据吗？", "系统提示", function(v, h, f) {
				if (v == "ok") {
					$("#searchForm").attr("action", ctx + "/pps/ppsA01ResultAreaDqData/exportExcel");
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
	var keyMap = {
		dataDt : checkData[0]
		,reportName : checkData[1]
		,inOrgCd : checkData[2]
		,inOrgName : checkData[3]
		,outOrgCd : checkData[4]
		,outOrgName : checkData[5]
	}
	go(ctx + "/pps/ppsA01ResultAreaDqData/formEdit?" + encodePram(keyMap));
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
	var keyMap = {
		dataDt : checkData[0]
		,reportName : checkData[1]
		,inOrgCd : checkData[2]
		,inOrgName : checkData[3]
		,outOrgCd : checkData[4]
		,outOrgName : checkData[5]
	}
	confirmx('确认要删除该支付统计流量流向(地区_地区)吗？', ctx + "/pps/ppsA01ResultAreaDqData/delete?" + encodePram(keyMap));
}

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});