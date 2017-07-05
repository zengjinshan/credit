<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@page import="com.tansun.easycare.modules.sys.utils.UserUtils"%>
<%@page import="com.tansun.easycare.modules.sys.entity.vo.MenuVo"%>
<%@page import="java.util.List"%>
<%@page import="com.alibaba.fastjson.JSON"%>
<html>
<head>
	<title>${fns:getConfig('productName')}</title>
	<meta name="decorator" content="blank"/>
	<c:set var="tabmode" value="${empty cookie.tabmode.value ? '0' : cookie.tabmode.value}"/>
	<link rel="stylesheet" href="${ctxStatic}/jerichotab/css/jquery.jerichotab.css" />
    <script type="text/javascript" src="${ctxStatic}/jerichotab/js/jquery.jerichotab.js"></script>
	<c:if test="${tabmode eq '1'}">
		<link rel="Stylesheet" href="${ctxStatic}/jerichotab/css/jquery.jerichotab.css" />
    	<script type="text/javascript" src="${ctxStatic}/jerichotab/js/jquery.jerichotab.js"></script>
    </c:if>
	<link href="${ctxStatic}/easycare/css/web_index.css" rel="stylesheet" />
	<script src="${ctxStatic}/easycare/js/jquery_ui/jquery.min.js"></script>
	<script src="${ctxStatic}/easycare/js/jquery_ui/ddsmoothmenu.js"></script>
	<script type="text/javascript">
	    ddsmoothmenu.init({
		    mainmenuid: "smoothmenu1", //menu DIV id
		    orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
		    classname: 'ddsmoothmenu', //class added to menu's outer DIV
		    contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
	    });
		$.noConflict(true);
	</script> 
	<%
	List<MenuVo> menuList = UserUtils.getUserMenuList();// 获取当前用户授权菜单
	String s = JSON.toJSONString(menuList);
	%>
	<script type="text/javascript">
	$(document).ready(function() {
		function getStrByteLength(str){
			var byteLen=0,len=str.length;
			if(str){
				for(var i=0; i<len; i++){
					if(str.charCodeAt(i)>255){
						byteLen += 2;
					} else{
						byteLen++;
					}
				}
				return byteLen;
			} else{
				return 0;
			}
		}
		// <c:if test="${tabmode eq '1'}"> 初始化页签
		$.fn.initJerichoTab({
            renderTo: '#right', uniqueId: 'jerichotab',
            contentCss: { 'height': $('#right').height() - tabTitleHeight },
            tabs: [], loadOnce: true, tabWidth: 110, titleHeight: tabTitleHeight
        });//</c:if>
		// 加载菜单
		var m  = <%=s%>;
		var mjson = eval(m);
		var mdiv = $("#smoothmenu1");
		var mul = $("<ul id='1'><li id='welcome'><a href='${ctx}/welcome/' target='mainFrame'><span>系统首页</span></a></li></ul>");
		var unfinished=true;
		mdiv.append(mul);
		var count = 0;
		if (mjson != null && mjson.length > 0) {
			var createMenu=function(){
				unfinished=false;
				$.each(mjson, function(i, n) { 
					if($("#" + n.id).length>0){				
						return;
					}
					
					if($("#" + n.parentId).length==0){
						/* count ++;
						if(count > 10000){
							alert(n.name + "菜单有问题需要删除,id=" + n.id);
							unfinished=false;
							return;
						} */
						//console.log(n.name+"==="+n.id + "===="+n.parentId);
						unfinished=true;
						return;
					}
					
					if (n.href) {
						/* if(n.href.indexOf("?")==-1){
							$("#" + n.parentId).append("<li id='"+n.id+"'><a href='${ctx}"+n.href+"?fun_id="+n.id+"'>" + n.name	+ "</a></li>");
						}else{
							$("#" + n.parentId).append("<li id='"+n.id+"'><a href='${ctx}"+n.href+"&fun_id="+n.id+"'>" + n.name	+ "</a></li>");
						} */
						var menuName = n.name;
						if(getStrByteLength(menuName) > 20){
							$("#" + n.parentId).append("<li id='"+n.id+"'><a href='${ctx}"+n.href+"' target='mainFrame' title='" + menuName + "'>" + menuName.substr(0,10) + "...</a></li>");
						} else {
							$("#" + n.parentId).append("<li id='"+n.id+"'><a href='${ctx}"+n.href+"' target='mainFrame'>" + n.name	+ "</a></li>");
						}
						$("#" + n.id + " a").click(function(){
							//$("#content").css('margin-left', '0px');
							// <c:if test="${tabmode eq '1'}"> 打开显示页签
							return addTab($(this)); // </c:if>
						});
					} else {
						$("#" + n.parentId).append("<li><a href='#'>" + n.name + "</a><ul id='"+n.id+"'></ul></li>");
					}
				});
			};
			while(unfinished){
				createMenu();
			}
		}
		$("#welcome a").click(function(){
			// <c:if test="${tabmode eq '1'}"> 打开显示页签
			return addTab($(this)); // </c:if>
		});
		// 初始化点击系统默认页
		$("#welcome span").click(function(){
			$("#content").css('margin-left', '-7px');
		});
		$("#welcome span").click();
		//第一次进入系统
		//$("#content").css('margin-left', '-7px');
		// <c:if test="${tabmode eq '1'}"> 下拉菜单以选项卡方式打开
		$("#userInfo .dropdown-menu a").mouseup(function(){
			return addTab($(this), true);
		});// </c:if>
	});
	// <c:if test="${tabmode eq '1'}"> 添加一个页签
	function addTab($this, refresh){
		$(".jericho_tab").show();
		$("#mainFrame").hide();
		$.fn.jerichoTab.addTab({
            tabFirer: $this,
            title: $this.text(),
            closeable: true,
            data: {
                dataType: 'iframe',
                dataLink: $this.attr('href')
            }
        }).loadData(refresh);
		return false;
	}// </c:if>
	</script>
	
</head>
<body>
	<div id="main">
		<!-- 头部 -->
		<div id="header" class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="brand"></div>
				<ul id="userControl" class="nav pull-right" style="padding-top:34px;">
					<li id="themeSwitch" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="主题切换"><i class="icon-th-large"></i></a>
						<ul class="dropdown-menu">
							<%-- <c:forEach items="${fns:getDictList('theme')}" var="dict"><li><a href="#" onclick="location='${pageContext.request.contextPath}/theme/${dict.value}?url='+location.href">${dict.label}</a></li></c:forEach> --%>
							<li><a href="javascript:cookie('tabmode','${tabmode eq '1' ? '0' : '1'}');location.reload()">${tabmode eq '1' ? '关闭' : '开启'}页签模式</a></li>
						</ul>
						<!--[if lte IE 6]><script type="text/javascript">$('#themeSwitch').hide();</script><![endif]-->
					</li>
					<li id="userInfo" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="个人信息">您好, ${fns:getUser().name}&nbsp;<span id="notifyNum" class="label label-info hide"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${ctx}/sys/user/info" target="mainFrame"><i class="icon-user"></i>&nbsp; 个人信息</a></li>
							<li><a href="${ctx}/sys/user/modifyPwd" target="mainFrame"><i class="icon-lock"></i>&nbsp;  修改密码</a></li>
						</ul>
					</li>
					<li><a href="${ctx}/logout" title="退出登录">退出</a></li>
					<li>&nbsp;</li>
				</ul>
			</div>
			<!-- 菜单 -->
		    <div class="headermenu">
		    	<div id="smoothmenu1" class="ddsmoothmenu">
		    	</div>
		    </div>
	    </div>
	    
	    <!-- 内容 -->
	    <div class="container-fluid">
			<div id="content" class="extend row-fluid">
				<div id="right">
					<iframe id="mainFrame" name="mainFrame" src="" style="overflow:visible;" scrolling="yes" frameborder="no" width="100%" height="650"></iframe>
				</div>
			</div>
			<!-- 底部 -->
		    <div id="footer" class="row-fluid">
	            <%-- Copyright &copy; 2012-${fns:getConfig('copyrightYear')} ${fns:getConfig('productName')} - Powered By <a href="http://www.tansun.com.cn" target="_blank">EasyCare</a> ${fns:getConfig('version')} --%>
	            	技术支持：天阳宏业科技股份有限公司
			</div>
		</div>
	</div>
	<script type="text/javascript"> 
		var leftWidth = 160; // 左侧窗口大小
		var tabTitleHeight = 33; // 页签的高度
		var htmlObj = $("html"), mainObj = $("#main");
		var headerObj = $("#header"), footerObj = $("#footer");
		var frameObj = $("#right, #right iframe");
		function wSize(){
			var minHeight = 500, minWidth = 980;
			var strs = getWindowSize().toString().split(",");
			htmlObj.css({"overflow-x":strs[1] < minWidth ? "auto" : "hidden", "overflow-y":strs[0] < minHeight ? "auto" : "hidden"});
			mainObj.css("width",strs[1] < minWidth ? minWidth - 10 : "auto");
			frameObj.height((strs[0] < minHeight ? minHeight : strs[0]) - headerObj.height() - footerObj.height() - (strs[1] < minWidth ? 14 : 0));
			$(".jericho_tab iframe").height($("#right").height() - tabTitleHeight);
			$("#right").width("100%");
		}
		// <c:if test="${tabmode eq '1'}"> 
		function openCloseClickCallBack(b){
			$.fn.jerichoTab.resize();
		} // </c:if>
	</script>
	<script src="${ctxStatic}/easycare/js/wsize.min.js" type="text/javascript"></script>
</body>
</html>