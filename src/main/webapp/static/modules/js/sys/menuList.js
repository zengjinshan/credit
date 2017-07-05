var menuList = new function() {
	return {
		updateSort : function(){
			loading('正在提交，请稍等...');
	    	$("#listForm").attr("action", ctx + "/sys/menu/updateSort");
	    	$("#listForm").submit();
		}
	}
};

$(function(){
	$("#treeTable").treeTable({expandLevel : 3}).show();
});