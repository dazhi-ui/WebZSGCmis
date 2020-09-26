<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  text="yellow" style="background: url(images/wen5.jpg); background-size:100%">
<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	<h2 align="center">恭喜您删除消息成功!!!!!</h2>
	<a href="Themain.jsp"><h2 align="center">点击此处返回到主页面</h2></a>
</body>
</html>