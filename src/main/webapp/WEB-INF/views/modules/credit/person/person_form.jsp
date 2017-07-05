<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>个人征信查询</title>
    <meta name="decorator" content="default"/>
    <script src="${ctxStatic}/modules/js/credit/person_form.js" type="text/javascript"></script>
</head>
<body>
<form:form id="inputForm" modelAttribute="dataCapture" action="${ctx}/rh/person/searchCredit" method="post" class="form-horizontal">
    <form:hidden path="id" />
    <sys:message content="${message}"/>
    <%--<div class="control-group">
        <label class="control-label">:</label>
        <div class="controls">
            <sys:treeselect id="org" name="orgCode" value="${user.orgCode}" labelName="orgName" labelValue="${user.orgName}"
                            title="机构" url="/sys/office/treeData" extId="${user.id}" cssClass="input-small" allowClear="true"/>
        </div>
    </div>--%>
    <div align="center">
        <div align="center" style="background: #71BACF;color: #fff;">
            <h2>个人信用报告查询</h2>
        </div>
    <div class="control-group">
        <label class="control-label">查询用户姓名:</label>
        <div class="controls">
            <form:input path="searchedUserName" htmlEscape="false" maxlength="50"  class="required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">用户证件类型:</label>
        <div class="controls">
            <form:select path="searchedCerType" class="input-medium">
                <form:options items="${fns:getDictList('cer_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">查询用户证件号码:</label>
        <div class="controls">
            <form:input path="searchedCerNo" htmlEscape="false" maxlength="50" class="input-medium"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">查询原因:</label>
        <div class="controls">
            <form:select path="queryReason" class="input-medium">
                <form:options items="${fns:getDictList('person_query_reason')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">查询类型:</label>
        <div class="controls">
            <form:select path="queryType" class="input-medium">
                <form:options items="${fns:getDictList('person_query_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>

    <div class="form-actions">
        <button class="btn_public" type="submit"><i class="icon button_save"></i>查询</button>&nbsp;
        <button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
    </div>

    </div>
</form:form>
</body>
</html>