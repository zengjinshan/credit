var regMsgInfoList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/base/regMsgInfo/form?belongSys=" + $('#h_regSys').val());
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/base/regMsgInfo/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该报文生成信息表吗？', ctx + "/base/regMsgInfo/delete?id="+checkDataIds[0]);
		},
		// 生成报文
		genMsgInfo : function(){
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var handle = $.getModalHandle("系统正在生成报文",false);
			goWithTips(ctx + "/base/regMsgInfo/genMsgInfo?id="+checkDataIds[0]);
		},
		// 校验数据
		checkMsgInfo : function(){
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			var handle = $.getModalHandle("系统正在校验");
			goWithTips(ctx + "/base/regMsgInfo/checkMsgInfo?id="+checkDataIds[0]);
		}
	}
};

$(function(){
	
});