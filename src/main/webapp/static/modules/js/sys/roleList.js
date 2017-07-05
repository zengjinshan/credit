var roleList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/sys/role/form");
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该角色吗？', ctx + "/sys/role/delete?id=" + checkDataIds[0]);
		},
		// 分配
		assign : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/sys/role/assign?id=" + checkDataIds[0]);
		}
	}
};

$(function(){
	
});