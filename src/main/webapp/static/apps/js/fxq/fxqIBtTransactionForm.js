var fxqIBtTransactionForm = new function() {
	return {
		// 修改保存 --对disabled进行解锁
		edit : function() {
			$("#dataDt").prop("disabled", false);	
			$("#custNo").prop("disabled", false);	
			$("#hhTxFeaCd").prop("disabled", false);	
			$("#txId").prop("disabled", false);	
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
	fxqIBtTransactionForm.init();
	try{
		var arr=$("#checkInfoTab")[0].value.split(",");
		$("#checkInfo").val(arr).trigger("change");
	}catch(e){}
});