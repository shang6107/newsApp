<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<title>详情页</title>
<style type="text/css">
	span{
		text-align: left;
		width:100px;
		display: block;
	}
</style>
</head>
<body>
<button id="email">返回邮件列表</button>
		<c:if test="${email != null}">
			<span >标题：</span>${email.title}<br/>
			<span>发信人：</span>${email.sender}<br/>
			<span>内容：</span>${email.context}<br/>
		</c:if>
		<c:if test="${email == null}">
		 	数据不存在
		</c:if>
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
		});
		
		$("#email").click(function(){
			window.location.href="<%=request.getContextPath()%>/admin/email/list"
		})
	});
	
</script>
</html>