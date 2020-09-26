<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body text="red"  style="background: url(images/wen5.jpg); background-size:100%">
<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	
	<h2 align="center">恭喜您登录成功！！！</h2>
	<a href="Themain.jsp"><h3 align="center">点击此处回到主页面!!!!!!</h4></a>
</body>
</html>