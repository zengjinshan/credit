<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>业务表管理</title>
	<meta name="decorator" content="blank"/>
	<script src="${ctxStatic}/modules/js/gen/genTableForm.js" type="text/javascript"></script>
</head>
<body>
	<c:choose>
		<c:when test="${empty genTable.name}">
			<form:form id="inputForm" modelAttribute="genTable" action="${ctx}/gen/genTable/form" method="post" class="form-horizontal">
				<form:hidden path="id"/>
				<sys:message content="${message}"/>
				<br/>
				<div class="control-group">
					<label class="control-label">表名:</label>
					<div class="controls">
						<form:select path="name" class="input-xxlarge">
							<form:options items="${tableList}" itemLabel="nameAndComments" itemValue="name" htmlEscape="false"/>
						</form:select>
					</div>
					<div class="form-actions">
						<button class="btn_public" type="submit"><i class="icon button_save"></i>下一步</button>
						<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
					</div>
				</div>
			</form:form>
		</c:when>
		<c:otherwise>
			<form:form id="inputForm" modelAttribute="genTable" action="${ctx}/gen/genTable/save" method="post" class="form-horizontal">
				<form:hidden path="id"/>
				<sys:message content="${message}"/>
				<fieldset>
					<legend>基本信息</legend>
					<div class="control-group">
						<label class="control-label">表名:</label>
						<div class="controls">
							<form:input path="name" htmlEscape="false" maxlength="200" class="required" readonly="true"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">说明:</label>
						<div class="controls">
							<form:input path="comments" htmlEscape="false" maxlength="200" class="required"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">类名:</label>
						<div class="controls">
							<form:input path="className" htmlEscape="false" maxlength="200" class="required"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">父表表名:</label>
						<div class="controls">
							<form:select path="parentTable" cssClass="input-xlarge">
								<form:option value="">无</form:option>
								<form:options items="${tableList}" itemLabel="nameAndComments" itemValue="name" htmlEscape="false"/>
							</form:select>
							&nbsp;当前表外键：
							<form:select path="parentTableFk" cssClass="input-xlarge">
								<form:option value="">无</form:option>
								<form:options items="${genTable.columnList}" itemLabel="nameAndComments" itemValue="name" htmlEscape="false"/>
							</form:select>
							<span class="help-inline">如果有父表，请指定父表表名和外键</span>
						</div>
					</div>
					<div class="control-group hide">
						<label class="control-label">备注:</label>
						<div class="controls">
							<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge"/>
						</div>
					</div>
					<legend>字段列表</legend>
					<div>
						<input type="button" class="btn_public" value="全选所有查询条件" onclick="selAllQuery();"/>
						<input type="button" class="btn_public" value="取消所有查询条件" onclick="selAllQuery2();"/>
						<input type="button" class="btn_public" value="取消所有插入条件" onclick="cancelAllInsert();"/>
						<input type="button" class="btn_public" value="取消所有编辑条件" onclick="cancelAllEdit();"/>
						<input type="button" class="btn_public" value="全选所有展示列表条件" onclick="selAllCols();"/>
						<input type="button" class="btn_public" value="取消所有展示列表条件" onclick="selAllCols2();"/>
						<input type="button" class="btn_public" value="平台系统状态顺序放在最前面" onclick="statusFirst();"/>
					</div>
					<div class="control-group">
						<table id="contentTable" class="table table-striped table-bordered table-condensed">
							<thead><tr><th title="数据库字段名">列名</th><th title="默认读取数据库字段备注">说明</th><th title="数据库中设置的字段类型及长度">物理类型</th><th title="实体对象的属性字段类型">Java类型</th>
								<th title="实体对象的属性字段（对象名.属性名|属性名2|属性名3，例如：用户user.id|name|loginName，属性名2和属性名3为Join时关联查询的字段）">Java属性名称 <i class="icon-question-sign"></i></th>
								<th title="是否是数据库主键">主键</th><th title="字段是否可为空值，不可为空字段自动进行空值验证">可空</th><th title="选中后该字段被加入到insert语句里">插入</th>
								<th title="选中后该字段被加入到update语句里">编辑</th><th title="选中后该字段被加入到查询列表里">列表</th>
								<th title="选中后该字段被加入到查询条件里">查询</th><th title="该字段为查询字段时的查询匹配放松">查询匹配方式</th>
								<th title="字段在表单中显示的类型">显示表单类型</th><th title="显示表单类型设置为“下拉框、复选框、点选框”时，需设置字典的类型">字典类型</th><th>排序</th></tr></thead>
							<tbody>
							<c:forEach items="${genTable.columnList}" var="column" varStatus="vs">
								<tr${column.delFlag eq '1'?' class="error" title="已删除的列，保存之后消失！"':''}>
									<td nowrap>
										<input type="hidden" name="columnList[${vs.index}].id" value="${column.id}"/>
										<input type="hidden" name="columnList[${vs.index}].delFlag" value="${column.delFlag}"/>
										<input type="hidden" name="columnList[${vs.index}].genTable.id" value="${column.genTable.id}"/>
										<input type="hidden" name="columnList[${vs.index}].name" value="${column.name}"/>${column.name}
									</td>
									<td>
										<input type="text" name="columnList[${vs.index}].comments" value="${column.comments}" maxlength="200" class="required" style="width:100px;"/>
									</td>
									<td nowrap>
										<input type="hidden" name="columnList[${vs.index}].jdbcType" value="${column.jdbcType}"/>${column.jdbcType}
									</td>
									<td>
										<select name="columnList[${vs.index}].javaType" class="required input-mini" style="width:85px;*width:75px">
											<c:forEach items="${config.javaTypeList}" var="dict">
												<option value="${dict.value}" ${dict.value==column.javaType?'selected':''} title="${dict.description}">${dict.label}</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<input type="text" name="columnList[${vs.index}].javaField" value="${column.javaField}" maxlength="200" class="required input-small"/>
									</td>
									<td>
										<input type="checkbox" name="columnList[${vs.index}].isPk" value="1" ${column.isPk eq '1' ? 'checked' : ''}/>
									</td>
									<td>
										<input type="checkbox" name="columnList[${vs.index}].isNull" value="1" ${column.isNull eq '1' ? 'checked' : ''}/>
									</td>
									<td>
										<input type="checkbox" name="columnList[${vs.index}].isInsert" value="1" ${column.isInsert eq '1' ? 'checked' : ''}/>
									</td>
									<td>
										<input type="checkbox" name="columnList[${vs.index}].isEdit" value="1" ${column.isEdit eq '1' ? 'checked' : ''}/>
									</td>
									<td>
										<input type="checkbox" name="columnList[${vs.index}].isList" value="1" ${column.isList eq '1' ? 'checked' : ''}/>
									</td>
									<td>
										<input type="checkbox" name="columnList[${vs.index}].isQuery" value="1" ${column.isQuery eq '1' ? 'checked' : ''}/>
									</td>
									<td>
										<select name="columnList[${vs.index}].queryType" class="required input-mini">
											<c:forEach items="${config.queryTypeList}" var="dict">
												<option value="${fns:escapeHtml(dict.value)}" ${fns:escapeHtml(dict.value)==column.queryType?'selected':''} title="${dict.description}">${fns:escapeHtml(dict.label)}</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<select name="columnList[${vs.index}].showType" class="required" style="width:100px;">
											<c:forEach items="${config.showTypeList}" var="dict">
												<option value="${dict.value}" ${dict.value==column.showType?'selected':''} title="${dict.description}">${dict.label}</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<input type="text" name="columnList[${vs.index}].dictType" value="${column.dictType}" maxlength="200" class="input-mini"/>
									</td>
									<td>
										<input type="text" name="columnList[${vs.index}].sort" value="${column.sort}" maxlength="200" class="required input-min digits"/>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</fieldset>
				<div class="form-actions" style="padding-left: 0px; text-align: center;">
					<shiro:hasPermission name="gen:genTable:edit"><button class="btn_public" type="submit"><i class="icon button_save"></i>保存</button>&nbsp;</shiro:hasPermission>
					<button class="btn_public" type="button" onclick="history.go(-1)"><i class="icon button_back"></i>返回</button>
				</div>
			</form:form>
		</c:otherwise>
	</c:choose>
</body>
</html>