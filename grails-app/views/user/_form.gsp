<%@ page import="com.bohui.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="20" required="" value="${userInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'flag', 'error')} ">
	<label for="flag">
		<g:message code="user.flag.label" default="Flag" />
		
	</label>
	<g:checkBox name="flag" value="${userInstance?.flag}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'loginName', 'error')} required">
	<label for="loginName">
		<g:message code="user.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginName" required="" value="${userInstance?.loginName}"/>

</div>

