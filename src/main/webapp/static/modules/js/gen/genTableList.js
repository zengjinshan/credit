var genTableList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/gen/genTable/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/gen/genTable/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该业务表吗？', ctx + "/gen/genTable/delete?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});