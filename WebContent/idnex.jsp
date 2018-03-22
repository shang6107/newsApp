<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\3\20 0020
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1>新增</h1>
<form:form action="${pageContext.request.contextPath}/add" method="post" >


    账号：<form:input path="mgrNo"/>
    密码：<form:input path="password"/>
    管理员名字：<form:input path="mgrName"/>
    权限：<form:input path="groupsId"/>


    <input type="submit" value="提交" />


</form:form>
</body>
</html>
