<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>人行用户管理</title>
    <meta name="decorator" content="default"/>
    <script src="${ctxStatic}/modules/js/credit/user_list.js" type="text/javascript"></script>
</head>
<body>
<%-- <div id="importBox" class="hide">
    <form id="importForm" action="${ctx}/sys/user/import" method="post" enctype="multipart/form-data"
        class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
        <input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
        <input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
        <a href="${ctx}/sys/user/import/template">下载模板</a>
    </form>
</div> --%>

<!-- 查询条件 -->
<div id="accordion">
    <h3 class="accordion_head accordion_head_actived ui-state-hover">查询条件</h3>
    <div class="row-fluid show-grid">
        <form:form id="searchForm" modelAttribute="user" action="${ctx}/rh/user/userList" method="post" class="search-form">
            <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
            <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
            <sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
            <!-- 第一行 -->
            <div>
                <div class="span3">
                    <label>归属机构：</label>
                    <div>
                        <sys:treeselect id="org" name="orgCode" value="" labelName="orgName" labelValue=""
                                        title="公司" url="/sys/office/treeData?type=1" cssClass="input-small" allowClear="true"/>
                    </div>
                </div>
                <div class="span3">
                    <label>用户类型:</label>
                    <div style="width: 200px;">
                        <select name="type" class="input-mini">
                            <option />
                            <c:forEach items="${dicts}" var="dict">
                                <option  value="${dict.value}">${dict.label}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

            </div>
            <!-- 按钮 -->
            <div class="">
                <button class="btn_public" type="button" onclick="rhUserList.query();"><i class="icon button_search"></i>查询</button>
                <button class="btn_public" type="reset"><i class="icon button_reset"></i>重置</button>
            </div>
        </form:form>
    </div>
</div>
<!-- 消息提示 -->
<sys:message content="${message}"/>
<!-- 操作按钮 -->
    <div class="button_table">
        <button class="btn_public" onclick="rhUserList.add();"><i class="icon button_add"></i>新增</button>
        <button class="btn_public" onclick="rhUserList.modify();"><i class="icon button_modify"></i>修改</button>
        <button class="btn_public" onclick="rhUserList.remove();"><i class="icon button_delete"></i>删除</button>
    </div>
<!-- 列表展示 -->
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th><input type="checkbox"></th>
        <!-- <th>归属部门</th> -->
        <th class="sort-column login_name">用户名</th>
        <th class="sort-column name">机构</th>
        <th>人行机构代码</th><th>个人或企业</th><%--<th>角色</th> --%>
        <%-- <shiro:hasPermission name="sys:user:edit"><th>操作</th></shiro:hasPermission> --%>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="user">
        <tr onclick="checkLine(this);">
            <td><input type="checkbox" id="${user.id }"></td>
            <td>${user.userId}</td>
            <td>${user.orgName}</td>
            <td>${user.outOrgCode}</td>
            <td>${fns:getDictLabel(user.type,"rh_user_type" ,"")}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>