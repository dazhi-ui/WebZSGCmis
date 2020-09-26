<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  style="background: url(images/wen7.jpg); background-size:100%" text="yellow">
<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	<h2 align="center">恭喜您修改信息成功！！！！！</h2>
	<h2 align="center"><a href="Themain.jsp">点击此处回到主页面</a></h2>
</body>
</html>