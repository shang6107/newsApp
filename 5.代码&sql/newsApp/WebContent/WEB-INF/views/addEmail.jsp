<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<title>写信页</title>
<style type="text/css">
	span{
		text-align: left;
		display: block;
	}
	#email{
		width: 50%;
		float:left;
	}
</style>
</head>
<body>
	<form id="email">
		<span >标题：</span><input type="text" name="title" maxlength="50" style=" margin: 10px;"/><br/>
		<span>收信人：</span><input type="text" name="receive" maxlength="50"  style=" margin: 10px;"/><br/>
		<span>内容：</span><textarea rows="20" cols="50" name="context"></textarea><br/>
		<input type="hidden" name="id" value="0" />
	</form>
	<table border="1">
		<tr>
			<th>收信人</th>
		</tr>
		<c:forEach items="${list}" var="i">
			<tr>
				<td class="account" style="cursor: pointer;">${i}</td>
			</tr>
		</c:forEach>
	</table>
	
	<button id="save">发送</button>
	<button onclick="javascript:window.location.href='<%=request.getContextPath()%>/admin/email/list'">取消</button>
</body>
<script type="text/javascript">
	$(function(){
		$("#save").click(function(){
			if($.trim($("[name='title']").val()) == ""){
				alert("请输入标题!");
				return false;
			}
			
			if($.trim($("[name='receive']").val()) == ""){
				alert("请选择收信人!");
				return false;
			}
			if($.trim($("[name='context']").val()) == ""){
				alert("请输入内容!");
				return false;
			}
			$.post("<%=request.getContextPath()%>/admin/email/insertEmail",$("#email").serialize(),function(d){
				if(d == "003"){
					alert("收信人不存在");
					return false;
				}
				if(d == "002"){
					alert("保存失败");
					return false;
				}
				if(d == "success"){
					var j = confirm("发送成功,是否继续发邮件?");
					if( j ){
						window.location.href="<%=request.getContextPath()%>/admin/email/addEmail"
					}else{
						window.location.href="<%=request.getContextPath()%>/admin/email/list"
					}
					return false;
				}
			})
		})
		
		$(".account").click(function(){
			$("[name='receive']").val($(this).text());
		})
	});
	
</script>
</html>