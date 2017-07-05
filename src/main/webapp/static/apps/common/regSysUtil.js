// 添加一个公用的ajax方法
// 用途说明:传递界面的tableName隐藏域进来,到后台匹配数据表关联流程表,并且查询流程是否允许操作
// 方法参数:1.表名, 2.操作类型, 3.四个数据状态
//										数据状态     REG_DATA_STATUS   
//										校验状态     REG_CHECK_STATUS  
//										报送状态     REG_SEND_STATUS   
//										操作状态     REG_OPERATE_STATUS)

 /**
 * 操作前置判断
 * @param tableName        数据库表名
 * @param operateType      操纵类型
 * @param regDataStatus    数据状态
 * @param regCheckStatus   校验状态
 * @param regSendStatus    报送状态
 * @param regOperateStatus 备用状态(监管状态)
 * @param returnfunc       执行的方法
 */
function determine(tableName, operateType, regDataStatus, regCheckStatus, regSendStatus, regOperateStatus, returnfunc){
	 var dataMap = "tableName=" + tableName
	             + "&operateType=" + operateType
			     + "&regDataStatus=" + regDataStatus 
			     + "&regCheckStatus=" + regCheckStatus 
			     + "&regSendStatus=" + regSendStatus
			     + "&regOperateStatus=" + regOperateStatus;
	$.ajax({
		url : ctx + "/base/regProcess/determine",
		data : dataMap,
		async : false,
		success : function(data) {
			// 成功
			if (data == 'true') {
				returnfunc();
			} else if (data == 'false') {
				alertx("数据操作不允许");
				// returnfunc();
			} else {
				alertx("其他错误:" + data);
			}
		}
	});
 }