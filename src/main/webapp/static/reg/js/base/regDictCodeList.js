var regDictCodeList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/base/regDictCode/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/base/regDictCode/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该监管代码映射表吗？', ctx + "/base/regDictCode/delete?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});