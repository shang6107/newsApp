<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<title>回收站</title>
<style type="text/css">
	.select{
		cursor: pointer;	
		}
</style>
</head>
<body>
<button id="email">返回邮件列表</button>
	<table border="1">
		<tr>
			<th>状态</th>
			<th>发件人</th>
			<th>主题</th>
			<th>时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${page.list}" var="d">
			<tr>
				<td>
					<c:if test="${d.see_state==0}">未读</c:if>
					<c:if test="${d.see_state==1}">已读</c:if>
				</td>
				<td class="select"  data-id="${d.id}">${d.sender}</td>
				<td class="select" data-id="${d.id}">${d.title}</td>
				<td><fmt:formatDate value="${d.create_time}" pattern="yyyy年MM月dd"/></td>
				<td>
					<button class="replyClass" data-id="${d.id}">恢复</button>
					<button class="deleteClass" data-id="${d.id}">彻底删除</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${page.page>1}">
		<a href="<%=request.getContextPath()%>/admin/email/list?page=${page.page-1}">上一页</a>
	</c:if>
	当前${page.page}页
	<c:if test="${page.page<page.countPage}">
		<a href="<%=request.getContextPath()%>/admin/email/list?page=${page.page+1}">下一页</a>
	</c:if>
	共${page.count}条&nbsp;共${page.countPage}页
</body>
<script type="text/javascript">
	$(function(){
		$(".deleteClass").click(function(){
			var id=$(this).data("id");
			$.post("<%=request.getContextPath()%>/admin/email/deleteEmail",{id:id},function(d){
				if(d == "success"){
					alert("删除成功");
					window.location.href=window.location.href;
					return false;
				}
				if(d == "004"){
					alert("删除失败");
					return false;
				}
			})
		})
		
		$(".replyClass").click(function(){
			var id=$(this).data("id");
			$.post("<%=request.getContextPath()%>/admin/email/recycle",{id:id,show:1},function(d){
				if(d == "success"){
					alert("恢复成功");
					window.location.href=window.location.href;
					return false;
				}
				if(d == "004"){
					alert("恢复失败");
					return false;
				}
			})
		})

		$(".select").click(function(){
			window.location.href="<%=request.getContextPath()%>/admin/email/emailInfo?id="+$(this).data("id");
		})
		
		$("#email").click(function(){
			window.location.href="<%=request.getContextPath()%>/admin/email/list"
		})
	})
</script>
</html>