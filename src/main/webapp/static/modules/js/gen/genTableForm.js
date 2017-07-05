var genTableForm = new function() {
	return {
		init : function() {
			$("#comments").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					$("input[type=checkbox]").each(function(){
						$(this).after("<input type=\"hidden\" name=\""+$(this).attr("name")+"\" value=\""
								+($(this).attr("checked")?"1":"0")+"\"/>");
						$(this).attr("name", "_"+$(this).attr("name"));
					});
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		}
	}
};

//勾选所有查询条件
function selAllQuery(){
	$("input[name$='isQuery']").each(function(idx, obj){
		$(this).attr("checked",'true');
	})
}

//勾选所有展示列表
function selAllCols(){
	$("input[name$='isList']").each(function(idx, obj){
		$(this).attr("checked",'true');
	})
}

//清空所有查询条件
function selAllQuery2(){
	$("input[name$='isQuery']").each(function(idx, obj){
		$(this).removeAttr("checked");
	})
}

//清空所有展示列表
function selAllCols2(){
	$("input[name$='isList']").each(function(idx, obj){
		$(this).removeAttr("checked");
	})
}

//清空所有插入
function cancelAllInsert(){
	$("input[name$='isInsert']").each(function(idx, obj){
		$(this).removeAttr("checked");
	})
}

//清空所有编辑
function cancelAllEdit(){
	$("input[name$='isEdit']").each(function(idx, obj){
		$(this).removeAttr("checked");
	})
}

//系统状态顺序置最前
function statusFirst(){
	$("input[name$='.name']").each(function(idx, obj){
		if($(this).val() == 'reg_data_status'){
			var index = $(this).attr('name').replace('.name','');
			$("input[name='" + index + ".sort']").val("1");
		} else if($(this).val() == 'reg_check_status'){
			var index = $(this).attr('name').replace('.name','');
			$("input[name='" + index + ".sort']").val("2");
		} else if($(this).val() == 'reg_send_status'){
			var index = $(this).attr('name').replace('.name','');
			$("input[name='" + index + ".sort']").val("3");
		} else if($(this).val() == 'reg_operate_status'){
			var index = $(this).attr('name').replace('.name','');
			$("input[name='" + index + ".sort']").val("4");
		}
	})
}

$(function(){
	genTableForm.init();
});