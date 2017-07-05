var regFxqFileRecodeList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/fxq/regFxqFileRecode/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/fxq/regFxqFileRecode/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该反洗钱文件名路径登记表吗？', ctx + "/fxq/regFxqFileRecode/delete?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});