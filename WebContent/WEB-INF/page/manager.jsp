<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\3\20 0020
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>管理员登录界面</title>
</head>
<body>
<form:form action="" modelAttribute="" method="post">
    <form:errors path="*"/>
    magrNo:<form:input path="magrNo"></form:input>非空<br>
    password:<form:input path="password"></form:input>密码错误<br>
    <input type="submit" value="提交">
</form:form>
</body>
</html>
