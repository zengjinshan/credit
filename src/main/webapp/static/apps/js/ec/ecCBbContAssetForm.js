var ecCBbContAssetForm = new function() {
	return {
		// 修改保存 --对disabled进行解锁
		edit : function() {
			$("#contAssetId").prop("disabled", false);	
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
		},
		setIframe : function(contAssetId, customerNo) {
			var keyMap = {
					contAssetId : contAssetId
					,customerNo : customerNo
				};
			$("iframe").each(function(index, domEle){
				var id = $(domEle).attr("id");
				var url = ctx + "/ec/" + id + "/getList?" + encodePram(keyMap);
				$(this).attr("src", url);
			});
		}
	}
};

$(function(){
	ecCBbContAssetForm.init();
	$("ul a").bind("click", function(event){
		event.preventDefault();
		$(this).tab('show');
	});
	var contAssetId = $("#contAssetId").val();
	var customerNo = $("#customerNo").val();
	ecCBbContAssetForm.setIframe(contAssetId, customerNo);
});