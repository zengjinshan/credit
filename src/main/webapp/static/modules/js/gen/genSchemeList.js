var genSchemeList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/gen/genScheme/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/gen/genScheme/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该生成方案吗？', ctx + "/gen/genScheme/delete?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});