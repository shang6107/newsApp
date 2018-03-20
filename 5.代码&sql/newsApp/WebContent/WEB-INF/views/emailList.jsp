<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<title>邮件列表页</title>
<style type="text/css">
	.select{
		cursor: pointer;	
		}
</style>
</head>
<body>
	<button id="delete">批量删除</button>
	<button id="insert">写信</button>
	<button id="recycle">回收站</button>
	<button id="logout">退出</button>
	<table border="1">
		<tr>
			<th><input type="checkbox"  id="checkboxAll"/></th>
			<th>状态</th>
			<th>发件人</th>
			<th>主题</th>
			<th>时间</th>
		</tr>
		<c:forEach items="${page.list}" var="d">
			<tr>
				<td><input type="checkbox" name="id" value="${d.id}"/></td>
				<td>
					<c:if test="${d.see_state==0}">未读</c:if>
					<c:if test="${d.see_state==1}">已读</c:if>
				</td>
				<td class="select"  data-id="${d.id}">${d.sender}</td>
				<td class="select"  data-id="${d.id}">${d.title}</td>
				<td><fmt:formatDate value="${d.create_time}" pattern="yyyy年MM月dd HH:mm:ss"  /></td>
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
		
		$("#delete").click(function(){
			if($("[name='id']").serialize() == ""){
				alert("请选择")
				return false;
			}
			$.post("<%=request.getContextPath()%>/admin/email/recycle",$("[name='id']").serialize()+"&show=0",function(d){
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
		
		$(".select").click(function(){
			window.location.href="<%=request.getContextPath()%>/admin/email/emailInfo?id="+$(this).data("id");
		})
		
		$("#recycle").click(function(){
			window.location.href="<%=request.getContextPath()%>/admin/email/litter";
		});
		
		$("#insert").click(function(){
			window.location.href="<%=request.getContextPath()%>/admin/email/addEmail";
		});
		$("#logout").click(function(){
			window.location.href="<%=request.getContextPath()%>/logout";
		});
		
		$("#checkboxAll").click(function(){
			if($(this).prop("checked")){
				$("[name='id']").prop("checked","true")
			}else{
				$("[name='id']").removeAttr("checked")
			}
		})
	})
</script>
</html>