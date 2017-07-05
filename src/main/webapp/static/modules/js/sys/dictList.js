var dictList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/sys/dict/form?sort=10");
		},
		// 修改
		modify : function(){
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/sys/dict/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function(){
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该字典吗？', ctx + "/sys/dict/delete?id="+checkDataIds[0]);
		},
		// 添加键值
		addValue : function(){
//			var checkDatas = getTableCheckedDatas("contentTable");
//			if(!checkDatas || checkDatas.length != 1){
//				alertx("请选择一条记录");
//				return ;
//			}
//			go(ctx + "/sys/dict/form?type="+checkDatas[0][3]+"&sort="+(parseInt(checkDatas[0][5])+10)+"&description="+checkDatas[0][4]);
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/sys/dict/addKey?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});