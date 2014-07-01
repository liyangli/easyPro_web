<!DOCTYPE html>
<html>
	<head>
		%{--<meta name="layout" content="main"/>--}%
		<title>快项</title>
        <asset:stylesheet src="reset.css"/>
        <asset:stylesheet src="style.css"/>
        <asset:stylesheet src="invalid.css"/>
        <!--                       Javascripts                       -->
        <!-- jQuery -->
        <g:javascript library="jquery" plugin="jquery"/>
        <g:javascript src="facebox.js"/>
        <g:javascript src="simpla.jquery.configuration.js"/>
        <g:layoutHead/>
	</head>
	<body>
    <div id="body-wrapper">
    <!-- Wrapper for the radial gradient background -->
    <div id="sidebar">
        <div id="sidebar-wrapper">
            <!-- Sidebar with logo and menu -->
            <h1 id="sidebar-title"><a href="#">快捷项目</a></h1>
            <!-- Logo (221px wide) -->
           <asset:image src="logo.png" alt="登录"/>
            <!-- Sidebar Profile links -->
            <div id="profile-links"> 欢迎${session.user?.userName} 回来 &nbsp;&nbsp;
                <g:link title="Sign Out" action="logout" controller="user">注销</g:link> </div>
            <ul id="main-nav">
                <!-- Accordion Menu -->
                <li> <a href="#" class="nav-top-item current">
                    <!-- Add the class "current" to current menu item -->
                    代码管理 </a>
                    <ul>
                        <li><a href="#" class="current">项目管理</a></li>
                        <li><a href="#">布局管理</a></li>
                        <li><a  href="#">功能管理</a></li>
                        <!-- Add class "current" to sub menu items also -->
                        <li><a href="#">内容设置</a></li>
                        <li><a href="#">页面设置</a></li>
                    </ul>
                </li>
                <li> <a href="#" class="nav-top-item">
                    <!-- Add the class "current" to current menu item -->
                    模板管理 </a>
                    <ul>
                        <li><a href="#" class="current">项目模板</a></li>
                        <li><a href="#">布局模板</a></li>
                        <li><a  href="#">功能模板</a></li>
                        <!-- Add class "current" to sub menu items also -->
                        <li><a href="#">内容模板</a></li>
                        <li><a href="#">页面模板</a></li>
                    </ul>
                </li>
                <li> <a href="#" class="nav-top-item">
                    <!-- Add the class "current" to current menu item -->
                    系统管理 </a>
                    <ul>
                        <li><a href="#" class="current">用户管理</a></li>
                        <li><a href="#">权限管理</a></li>
                    </ul>
                </li>


            </ul>
        </div>
    </div>
    <!-- End #sidebar -->
    <div id="main-content">
    <!-- Main Content Section with everything -->
    <!-- Page Head -->
    <h2>欢迎进入快项管理系统</h2>
    <!-- End .shortcut-buttons-set -->
    <div class="clear"></div>
    <!-- End .clear -->
    <div class="content-box">
            <div class="tab-content default-tab" id="tab1">
                <g:layoutBody/>
            </div>
    </div>
    <!-- End .content-box -->
    <div id="footer"> <small>
        <!-- Remove this notice or replace it with whatever you want -->
        &#169; Copyright 2014 北京市博汇科技股份有限公司 </small> </div>
    <!-- End #footer -->
    </div>
    <!-- End #main-content -->
    </div>
	</body>
</html>
