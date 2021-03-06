var userList = new function() {
	return {
		// 查询
		query : function() {
			var queryCondition = $("#searchForm").serialize();
			$.ajax({
				url : ctx + "/sys/user/setQueryCondition",
				data : queryCondition,
				async : false,
				success : function(){
					$("#searchForm").submit();
				}
			});
		},
		// 页面初始化方法
		init : function() {
			/*$("#btnExport").click(function(){
				top.$.jBox.confirm("确认要导出用户数据吗？","系统提示",function(v,h,f){
					if(v=="ok"){
						$("#searchForm").attr("action","${ctx}/sys/user/export");
						$("#searchForm").submit();
					}
				},{buttonsFocus:1});
				top.$('.jbox-body .jbox-icon').css('top','55px');
			});
			$("#btnImport").click(function(){
				$.jBox($("#importBox").html(), {title:"导入数据", buttons:{"关闭":true}, 
					bottomText:"导入文件不能超过5M，仅允许导入“xls”或“xlsx”格式文件！"});
			});*/
		},
		// 新增
		add : function() {
			go(ctx + "/sys/user/form");
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/sys/user/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该用户吗？', ctx + "/sys/user/delete?id="+checkDataIds[0]);
		}
		
	}
};

$(function(){
//	userList.init();
});