var regOrgDictForm = new function() {
	return {
		isOne:function(){
			var id=$("#id").val();
			var sourceOrgCode =$("#sourceOrgCode").val();
			var map ="id="+id+"&sourceOrgCode="+sourceOrgCode;
			$.ajax({
				url : ctx + "/base/regOrgDict/isOne",
				data : map,
				async : false,
				success : function(data) {
					//成功
					if (data=='true') {
				    $("#inputForm").submit();
					}else{
					alertx("源系统机构编号重复");	
					}
				}						 
	 });
		},
		init : function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
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

$(function(){
	regOrgDictForm.init();
});