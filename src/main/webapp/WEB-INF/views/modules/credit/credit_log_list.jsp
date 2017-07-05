<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>征信查询记录</title>
    <meta name="decorator" content="default"/>
    <script src="${ctxStatic}/modules/js/credit/credit_log_list.js" type="text/javascript"></script>
</head>
<body>
<!-- 查询条件 -->
<div id="accordion">
    <h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
    <div class="row-fluid show-grid">
        <form:form id="searchForm" modelAttribute="rhSearchLog" action="${ctx}/rh/person/list" method="post" class="search-form">
            <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
            <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
            <sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
            <!-- 第一行 -->
            <div>
                <div class="span3">
                    <label>查询人：</label>
                    <div>
                        <form:input path="createUserName" htmlEscape="false" maxlength="50" class="input-medium"/>
                    </div>
                </div>

                <div class="span3">
                    <label>个人、企业：</label>
                    <div>
                        <select id="peFlag" name="peFlag" class="input-large">
                            <option />
                            <c:forEach items="${userTypes}" var="userType">
                                <option  value="${userType.value}">${userType.label}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="span4" style="display: inline-block; white-space: nowrap;">
                    <label>日期范围：</label>
                    <div style="display:inline-block;">
                        <input id="beginDate" name="beginDate" type="text" readonly="readonly" maxlength="20" class="input-mini Wdate"
                               value="<fmt:formatDate value="${log.beginDate}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
                        --
                        <input id="endDate" name="endDate" type="text" readonly="readonly" maxlength="20" class="input-mini Wdate"
                               value="<fmt:formatDate value="${log.endDate}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
                    </div>
                </div>
                <div style="padding-top: 70px;margin-left: 520px;">
                    <button class="btn_public" type="button" onclick="rhLogList.query();"><i class="icon button_search"></i>查询</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
                </div>

            </div>


            <!-- 按钮 -->
        </form:form>
    </div>
</div>
<!-- 消息提示 -->
<sys:message content="${message}"/>
<!-- 操作按钮 -->
<%--<div class="button_table">
    <button class="btn_public" onclick="rhPersonSearchList.add();"><i class="icon button_add"></i>个人征信查询</button>
    <button class="btn_public" onclick="rhPersonSearchList.show();"><i class="icon button_modify"></i>查看信用报告</button>
</div>--%>
<!-- 列表展示 -->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th><input type="checkbox"></th>
        <!-- <th>归属部门</th> -->
        <th>查询流水</th>
        <th class="sort-column login_name">查询用户</th>
        <th>查询类型</th>
        <th>被查询用户名称</th>
        <th>被查询用户号码</th>
        <th>被查询用户号码类型</th>
        <th class="sort-column name">查询时间</th>
        <%--<th>角色</th> --%>
        <%-- <shiro:hasPermission name="sys:user:edit"><th>操作</th></shiro:hasPermission> --%>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="log">
        <tr onclick="checkLine(this);">
            <td><input type="checkbox" id="${log.id }"></td>
            <td>${log.querySeri}</td>
            <td>${fns:getDictLabel(log.peFlag,"rh_user_type" ,"")}</td>
            <td>${log.searcher}</td>
            <td>${log.searcherNo}</td>
            <td>${log.searchType}</td>
            <td>${log.createUserName}</td>
            <td>
                <fmt:formatDate value="${log.createDate}" pattern="yyyy-MM-dd HH:mm:ss" type="both"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>