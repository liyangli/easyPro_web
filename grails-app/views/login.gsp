<%--
  Created by IntelliJ IDEA.
  User: bohui
  Date: 2014/6/27
  Time: 14:35
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>快项</title>
    <!-- Reset Stylesheet -->
    <asset:stylesheet src="reset.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="invalid.css"/>
    <!-- jQuery -->
    <g:javascript library="jquery" plugin="jquery" />
    <asset:javascript src="jquery.cookie.js"/>
    <g:javascript src="login.js"/>
</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
    <div id="login-top">
        <h1>快项</h1>
        <!-- Logo (221px width) -->
        <asset:image src="logo.png" alt="快捷创建web项目"/>
    <!-- End #logn-top -->
    <div id="login-content">
         <g:form controller="user" action="login" method="POST">
             <g:if test="${flash.message}">
                 <div class="notification information png_bg">
                     <div> ${flash.message} </div>
                 </div>
             </g:if>
            <p>
                <label>用户名：</label>
                <input class="text-input" type="text" id="userName" name="userName" value="${user?.userName}" />
            </p>
            <div class="clear"></div>
            <p>
                <label>密码：</label>
                <input class="text-input" type="password" id="password" name="password" value="${user?.password}" />
            </p>
            <div class="clear"></div>
            <p id="remember-password">
                <g:checkBox name="remember" value="${remember}" id="remember" ></g:checkBox>
                记住密码
                 </p>
            <div class="clear"></div>
            <p>
                <g:submitButton name="button" value="登录"  class="button"/>
            </p>
         </g:form>
    </div>
    <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>