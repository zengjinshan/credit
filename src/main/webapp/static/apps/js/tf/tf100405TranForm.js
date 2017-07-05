var tf100405TranForm = new function() {
	return {
		// 修改保存 --对disabled进行解锁
		edit : function() {
			$("#transSerialNumber").prop("disabled", false);	
			$("#accountSerial").prop("disabled", false);	
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
	tf100405TranForm.init();
});
$(document).ready(function(){
	  var tsnFormaddTran = $('#tsnFormaddTran').val();
	  if(tsnFormaddTran !== ''){
		  $('#tsnFormaddTran').attr("disabled",true);
	  }
	  var asFormAddTran = $('#asFormAddTran').val();
	  if(asFormAddTran !== ''){
		  $('#asFormAddTran').attr("disabled",true);
	  }
	  $('#save').bind('click',function(){
		  $('#tsnFormaddTran').attr("disabled",false);
		  $('#asFormAddTran').attr("disabled",false);
		  $("#inputForm").submit();
	  });
	});