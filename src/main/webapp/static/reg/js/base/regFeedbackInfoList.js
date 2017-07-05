var regFeedbackInfoList = new function() {
	return {
		// 新增
		add : function() {
			go(ctx + "/base/regFeedbackInfo/form?belongSys=" + $('#h_regSys').val());
		},
		// 修改
		modify : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			go(ctx + "/base/regFeedbackInfo/form?id="+checkDataIds[0]);
		},
		// 删除
		remove : function() {
			var checkDataIds = getTableCheckedIds("contentTable");
			if(!checkDataIds || checkDataIds.length != 1){
				alertx("请选择一条记录");
				return ;
			}
			confirmx('确认要删除该监管反馈信息表吗？', ctx + "/base/regFeedbackInfo/delete?id="+checkDataIds[0]);
		},
		// 导入反馈
		importFeedback : function() {
			$.jBox($("#importBox").html(), {
				title : "导入数据",
				buttons : {
					"关闭" : true
				},
				bottomText : "导入文件不能超过5M！"
			});
		},
		import : function() {
//			alert("-->" + document.getElementById("uploadFile").files[0].name + "<--");
			alert("-->" + $("#uploadFile").files[0].name + "<--");
		}
	}
};

$(function(){
	$("select").select2({allowClear: true, width:'177px'}); 
});