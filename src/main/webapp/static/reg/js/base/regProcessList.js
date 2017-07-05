var regProcessList = new function() {
	
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/base/regProcess/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/base/regProcess/form");
		},
		// 修改
		modify : function() {
			returnFunc1();
			  /* var checkDatas = getTableCheckedDatas("contentTable");
			   debugger;
			   var tableName = "REGPROCESS";   //表名
			   var operateType = "EDT"; //操作类型
			   var regDataStatus = checkDatas[0][3]; //数据状态
			   var regCheckStatus = checkDatas[0][4]; //校验状态
			   var regSendStatus = checkDatas[0][5];   //报送状态
			   var regOperateStatus = checkDatas[0][6];  //操作状态
						   
			   determine(tableName,operateType,regDataStatus,regCheckStatus,regSendStatus,regOperateStatus,returnFunc1);*/			
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该流程表吗？', ctx + "/base/regProcess/delete?id="+checkDataIds[0]);
		}
	}
};
function returnFunc1(){
	debugger;
	var checkDataIds = getTableCheckedIds("contentTable");
	if(!checkDataIds || checkDataIds.length != 1){
		alertx("请选择一条记录");
		return ;
	}
	go(ctx + "/base/regProcess/form?id="+checkDataIds[0]);
}


$(function(){
	
});