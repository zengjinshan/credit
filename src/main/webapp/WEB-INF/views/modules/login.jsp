<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UFT-8" />
<link href="${basePath}/static/easycare/images/icon_logo.ico" rel="icon" type="image/x-icon" />
<link href="${basePath}/static/easycare/images/icon_logo.ico" rel="shortcut icon" type="image/x-icon"/>
<title>统一登录平台</title>
<link href="${basePath}/static/easycare/css/web_login.css" rel="stylesheet" type="text/css"/>
<%-- <script src="${basePath}/static/js/easycare/web_login.js" type="text/javascript"></script> --%>
<!--[if IE 6]> 
<script src="${basePath}/static/js/DD_belatedPNG_0.0.8a.js" type="text/javascript" ></script>
<script type="text/javascript">
    DD_belatedPNG.fix('*');
</script> 
<![endif]--> 
</head>
<div class="header_login">
      <div class="logo_login"></div>
</div>

<div class="bodyer_login">
     <div class="contentblank_login"></div>
     
     <div class="tabcontent_login">
         <ul>
             <li id="tabid1" onClick="setTab('tabid',1,3)" class="hover"><img src="${basePath}/static/easycare/images/login/menu_icon01.png" width="160" height="60" /></li>
             <li id="tabid2" onClick="setTab('tabid',2,3)"><img src="${basePath}/static/easycare/images/login/menu_icon02.png" width="160" height="60" /></li>
	         <li id="tabid3" onClick="setTab('tabid',3,3)"><img src="${basePath}/static/easycare/images/login/menu_icon03.png" width="160" height="60" /></li>
         </ul>
         
         <div class="tabcontentbox">
             <div class="tabcontentsubbox" id="con_tabid_1">
                  <div class="systemname"></div>
                  <form action="login" method="post" style="padding:0px;margin:0px;">
                  	<div class="systemcontent"><input type="text" class="input_user" name="username" id="username" value="${username}" size="24" maxlength="25"/></div>                  
                  	<div class="systemcontent"><input type="text" class="input_password" name="password" id="password" size="24" maxlength="25" onfocus="this.type='password'" autocomplete="off"/></div>  
                  	<div class="systemform"><input type="checkbox" name="rememberMe" id="rememberMe" />记住我的登录信息</div>
                  	<div class="systembutton">
                  		<input type="submit" class="btn_enter" value="登录"/>
                  		<input type="reset" class="btn_delete" value="重置"/>
                  	</div>
                  	<div class="systemwarning">${message}</div>
                  </form>
             </div>
             
	         <div class="tabcontentsubbox" style="display:none;" id="con_tabid_2">
                  <div class="systemcontent">指纹登录控件</div>
             </div>
             
	         <div class="tabcontentsubbox" style="display:none;" id="con_tabid_3">
                  <div class="systemcontent">虹膜登录控件</div>
             </div>
         </div>
         
     </div>
  
</div>
</body>
</html>
