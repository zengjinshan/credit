var regFeedbackCodeList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/base/regFeedbackCode/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/base/regFeedbackCode/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该监管反馈对照表吗？', ctx + "/base/regFeedbackCode/delete?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});