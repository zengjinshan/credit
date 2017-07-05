<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>企业征信查询</title>
    <meta name="decorator" content="default"/>
    <script src="${ctxStatic}/modules/js/credit/enterprise_list.js" type="text/javascript"></script>
</head>
<body>
<!-- 查询条件 -->
<div id="accordion">
    <h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
    <div class="row-fluid show-grid">
        <form:form id="searchForm" modelAttribute="enterpriseDataCapture" action="${ctx}/rh/enterprise/list" method="post" class="search-form">
            <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
            <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
            <sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
            <!-- 第一行 -->
            <div>
         <%--       <div class="span3">
                    <label>机构信用代码：</label>
                    <div>
                        <form:input path="creditCode" htmlEscape="false" maxlength="50" class="input-medium"/>
                    </div>
                </div>--%>

                <div class="span3">
                    <label>中征码：</label>
                    <div>
                        <form:input path="loanCardNo" htmlEscape="false" maxlength="50" class="input-medium"/>
                    </div>
                </div>

             <div class="span3">
                 <label>查询原因：</label>
                 <div>
                     <select id="searchReason" name="searchReason" class="input-large">
                         <option />
                         <c:forEach items="${enterpriseQueryReason}" var="queryReason">
                             <option  value="${queryReason.value}">${queryReason.label}</option>
                         </c:forEach>
                     </select>
                 </div>
             </div>

               <%-- <div class="span3">
                    <label>组织机构代码：</label>
                    <div>
                        <form:input path="corpNo" htmlEscape="false" maxlength="50" class="input-medium"/>
                    </div>
                </div>--%>

             <%--   <div class="span3">
                    <label>登记注册类型：</label>
                    <div>
                        <select name="regiTypeCode" class="input-large">
                            <c:forEach items="${cerTypes}" var="cerType">
                                <option  value="${cerType.value}">${cerType.label}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="span3">
                    <label>登记注册号：</label>
                    <div>
                        <form:input path="frgCorpNo" htmlEscape="false" maxlength="50" class="input-large"/>
                    </div>
                </div>

                <div class="span3">
                    <label>纳税人识别号(国税)：</label>
                    <div>
                        <form:input path="gsRegiNo" htmlEscape="false" maxlength="50" class="input-large"/>
                    </div>
                </div>
                <div class="span3">
                    <label>纳税人识别号(地税)：</label>
                    <div>
                        <form:input path="dsRegiNo" htmlEscape="false" maxlength="50" class="input-large"/>
                    </div>
                </div>--%>

            </div>
            <!-- 按钮 -->
            <div style="padding-left: 100px;padding-top: 25px;">
                <button class="btn_public" type="button" onclick="rhEnterpriseSearchList.query();"><i class="icon button_search"></i>查询</button>
                <button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
            </div>
        </form:form>
    </div>
</div>
<!-- 消息提示 -->
<sys:message content="${message}"/>
<!-- 操作按钮 -->
<div class="button_table">
    <button class="btn_public" onclick="rhEnterpriseSearchList.add();"><i class="icon button_add"></i>企业征信查询</button>
    <button class="btn_public" onclick="rhEnterpriseSearchList.show();"><i class="icon button_modify"></i>查看信用报告</button>
</div>
<!-- 列表展示 -->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th><input type="checkbox"></th>
        <!-- <th>归属部门</th> -->
        <th class="sort-column login_name">中征码</th>
        <th class="sort-column name">查询原因</th>
        <th>查询时间</th>
        <%--<th>角色</th> --%>
        <%-- <shiro:hasPermission name="sys:user:edit"><th>操作</th></shiro:hasPermission> --%>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="enterpriseDataCapture">
        <tr onclick="checkLine(this);">
            <td><input type="checkbox" id="${enterpriseDataCapture.id }"></td>
            <td>${enterpriseDataCapture.loanCardNo}</td>
            <td>${fns:getDictLabel(dataCapture.searchReason,"enterprise_query_reason" ,"")}</td>
            <td>
                <fmt:formatDate value="${dataCapture.createDate}" pattern="yyyy-MM-dd HH:mm:ss" type="both"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>