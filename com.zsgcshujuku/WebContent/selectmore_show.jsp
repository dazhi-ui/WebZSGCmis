<%@ page language="java" contentType="text/html; charse=tUTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息显示页面</title>
</head>
<body>
<a href="Themain.jsp">返回主界面</a>
<%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		alert("<%=request.getAttribute("message")%>");
	</script>
 <%}%>
<table>
	<tr>
		<td>姓名</td>
		<td>身份证号</td>
		<td>籍贯</td>
		<td>电话</td>
		<td>出生时间</td>
		<td>专业</td>
		<td>备注</td>
	</tr>
<c:forEach items="${course11}" var="course1">
	<tr>
		<td>${course1.name}</td>
		<td>${course1.shenfen}</td>
		<td>${course1.jiguan}</td>
		<td>${course1.dianhua}</td>
		<td>${course1.chusheng}</td>
		<td>${course1.zhuanye}</td>
		<td>${course1.beizhu}</td>
		
	</tr>
		</c:forEach>
</table>
</body>
</html>