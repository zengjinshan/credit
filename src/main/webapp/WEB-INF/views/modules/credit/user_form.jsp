<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>人行用户管理</title>
    <meta name="decorator" content="default"/>
    <script src="${ctxStatic}/modules/js/credit/user_form.js" type="text/javascript"></script>
</head>
<body>
<form:form id="inputForm" modelAttribute="user" action="${ctx}/rh/user/save" method="post" class="form-horizontal">
    <form:hidden path="id" />
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">机构:</label>
        <div class="controls">
            <sys:treeselect id="org" name="orgCode" value="${user.orgCode}" labelName="orgName" labelValue="${user.orgName}"
                            title="机构" url="/sys/office/treeData" extId="${user.id}" cssClass="input-small" allowClear="true"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">人行登录用户:</label>
        <div class="controls">
            <form:input path="userId" htmlEscape="false" maxlength="50"  class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">人行登录密码:</label>
        <div class="controls">
            <form:input path="password" htmlEscape="false" maxlength="50" class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">人行机构编码:</label>
        <div class="controls">
            <form:input path="outOrgCode" htmlEscape="false" maxlength="50"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">是否可用:</label>
        <div class="controls">
            <form:select path="standInd">
                <form:options items="${fns:getDictList('yes_no')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">用户类型:</label>
        <div class="controls">
            <form:select path="type" class="input-medium">
                <form:options items="${fns:getDictList('rh_user_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>

    <div class="form-actions">
        <button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;
        <button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
    </div>
</form:form>
</body>
</html>