<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  text="yellow" style="background: url(images/wen7.jpg); background-size:100%" >
<h2 align="center">请输入想要删除信息的用户名</h2>
<form   action="UserServlet?method=deletecheck"  onsubmit="return chackall()"  method="post"  >

<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>

<table align="center">
<tr><td>名字：</td><td><input type="text" id="name4" name="name4" style=" border-color:Lime;border-radius:6px;" maxlength="12" value="" placeholder="请输入账户名" required="required" /></td>
<tr><td></td><td><input type="submit" value="删除此用户所有信息"  style="background-color:CornflowerBlue;width:150px;height:25px;border-radius:4px;" ></td>
<a href="Themain.jsp"><h3 align="center">点击此处回到主页面!!!!!!</h4></a>
<script type="text/javascript">

		
</table>
</form>
</body>
</html>