var demoList = new function(){
	return {
		// 新增
		add : function(){
			go(ctx + "/test/testData/form");
		},
		modify : function(){
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			// 页面跳转checkDataIds[0]
			
		},
		remove : function(){
			
		}
	}
};

$(function(){
	
});