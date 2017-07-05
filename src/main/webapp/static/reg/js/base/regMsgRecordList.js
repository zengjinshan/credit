var regMsgRecordList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/base/regMsgRecord/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 新增
		add : function() {
			go(ctx + "/base/regMsgRecord/form?belongSys=" + $('#h_regSys').val());
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/base/regMsgRecord/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该报文生成记录表吗？', ctx + "/base/regMsgRecord/delete?id="+checkDataIds[0]);
		},
		// 下载
		download : function($e) {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			 $.ajax(ctx + "/base/regMsgRecord/download?id="+ checkDataIds[0]);
			try{
				downLoadFileById(checkDataIds[0]);
			}catch(e){alert(e.message)}
		}
	}
};

$(function(){
	
});