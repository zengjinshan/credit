<%@ page contentType="text/html;charset=UTF-8"%>

<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
	var timer = 0;
	// 定时发送请求到后台,防止页面超时
	// (说明:将smartbi界面iframe进来后,操作smartbi界面超过30分钟后,会导致本系统的session失效)
	function linkOnline() {
		timer = setInterval(function() {
			$.ajax({
				type : "POST",
				url : "${ctx}/reg/smartbi/toSmartbi",
				dataType : "json",
				data : {
					ajax : "1",
					time : "1000"
				},
				success : function(data) {
					//成功
					if (data) {
						clearInterval(timer);
						linkOnline();
					}
				}
			});
		}, 10 * 60 * 1000); // 每个10分钟发送一次
	}
	linkOnline();
</script>

<body>
	<iframe src="${smartbiUrl}" height="95%" width="100%" frameborder="0" ></iframe>
</body>

