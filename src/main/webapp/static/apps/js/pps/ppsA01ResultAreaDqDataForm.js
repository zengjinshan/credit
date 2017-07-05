var ppsA01ResultAreaDqDataForm = new function() {
	return {
		// 修改保存 --对disabled进行解锁
		edit : function() {
			$("#dataDt").prop("disabled", false);	
			$("#reportName").prop("disabled", false);	
			$("#inOrgCd").prop("disabled", false);	
			$("#inOrgName").prop("disabled", false);	
			$("#outOrgCd").prop("disabled", false);	
			$("#outOrgName").prop("disabled", false);	
			$("#inputForm").submit();
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
	ppsA01ResultAreaDqDataForm.init();
});