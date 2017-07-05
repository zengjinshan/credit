/*
 * 
 * 列表复选框
 * @author caojianfeng
 * @version 2017-2-14
 */
$(document).ready(function() {
	try{
		// 列表使用复选框
		//全选功能
	    $("table th input:checkbox").on("click",function() {
            var that = this;
            $(this).closest("table").find("tr > td:first-child input:checkbox").each(function() {
                this.checked = that.checked;
//                if(this.checked){
//                    $(this).parents("tr").addClass("success");//success是一个颜色类样式
//                }else{
//                    $(this).parents("tr").removeClass("success");
//                }
            });
            
        });
	    //checkbox单击行事件
	    $("table tr td input:checkbox").on("click",function(){
	        this.checked=!this.checked;
	        fullCkOrNot();
	    });
	}catch(e){
		
	}
});

// 单击行选中
function checkLine(e){
	$(e).find("td:first-child input").each(function(){
        this.checked=!this.checked;
//        if(this.checked){
//            $(e).addClass("success");
//        }else{
//            $(e).removeClass("success");
//        }
    });
    fullCkOrNot();
}

// 全选checkbox响应其他checkbox的选中事件
function fullCkOrNot(){
	var allCB=$("table th input:checkbox").get(0);
    if($("table tr td input:checkbox:checked").length==$("table tr td input:checkbox").length){
        allCB.checked=true;
    }else{
        allCB.checked=false;
    }
}

// 获取列表checkbox选中数据id
// checkDatas[0]
function getTableCheckedIds(tableId){
	var checkDatas = [];
	 $("#"+tableId+" :checkbox").each(function(key,value){
         if(value.checked && value.id){// 忽略首行和无效id
        	 checkDatas.push(value.id);
         }
     });
	 if(checkDatas.length > 0){
		 return checkDatas;
	 }
	 return null;
}

//获取列表checkbox选中数据列表
//checkDatas[0][0]
function getTableCheckedDatas(tableId){
	var checkDatas = [];
	 $("#"+tableId+" :checkbox").each(function(key,value){
        if(value.checked && value.id){
        	var checkData = [];
        	$(value).parent().parent().find("td").each(function(){
        		checkData.push($(this).text());
        	});
        	checkDatas.push(checkData);
        }
    });
	 if(checkDatas.length > 0){
		 return checkDatas;
	 }
	 return null;
}