<!DOCTYPE html>
<html>
<head>
    %{--<meta name="layout" content="main"/>--}%
    <title>快项</title>
    <meta name="layout" content="index"/>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>项目名称</th>
        <th>项目别名</th>
        <th>项目描述</th>
        <th>布局</th>
        <th>功能</th>
        <th>实体对象</th>
    </tr>
    </thead>

    <tbody>
    <g:each var="project" in="${projectInstanceList}">
        <tr>
            <td>
                ${project.name}
            </td>
            <td>${project.otherName}</td>
            <td>${project.projectDesc}</td>
            <td>布局</td>
            <td>功能</td>
            <td>
                <!-- Icons -->
                实体对象
            </td>
        </tr>
    </g:each>

    </tbody>
    <tfoot>
    <tr>
        <td colspan="6">
            <g:paginate total="${projectInstanceList?: 0}" />
            <!-- End .pagination -->
        </td>
    </tr>
    </tfoot>
</table>
</body>
</html>
