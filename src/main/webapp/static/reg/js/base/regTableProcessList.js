var regTableProcessList = new function() {
	return {
	// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/base/regTableProcess/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/base/regTableProcess/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/base/regTableProcess/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该数据关联流程表吗？', ctx + "/base/regTableProcess/delete?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});