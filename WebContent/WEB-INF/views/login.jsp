<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<title>登陆</title>
</head>
<body>
	账号<input name="account" type="text"/><br/>
	密码<input name="password" type="password"/>
	<button id="login">登陆</button>
</body>
<script type="text/javascript">
	$(function(){
		$("#login").click(function(){
			var account = $.trim($("[name='account']").val());
			var password = $.trim($("[name='password']").val());
			if(account==""){
				alert("请输入账号");
				return ;
			}
			
			if(password==""){
				alert("请输入密码");
				return ;
			}
			$.post('<%=request.getContextPath()%>/login',{account:account,password:password},function(d){
				if(d == 'success'){
					alert('登陆成功');
					window.location.href="<%=request.getContextPath()%>/admin/email/list"
					return false;
				}
				if(d == '001'){
					alert('账号密码不正确');
					return false;
				}
			});
		})
		
	})
</script>
</html>