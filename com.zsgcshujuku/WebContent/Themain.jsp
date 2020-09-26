<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
a:link    {color:blue;}
a:visited {color:blue;}/*选择未访问、已访问、悬浮和活动链接，并设置它们的样式：*/
a:hover   {color:red;}
a{
   font-size:22px;
   font-family:"楷体";/*设置字体*/
   font-weight:2px;
 }
h1 
{
color:red; 
font-size:44px;}
</style>
<body >
<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	          request.setAttribute("message", "");
	     </script>
	<%} %>
<h1 align="center" >请选择下面其中一项</h1>
<a href="UserServlet?method=allall"><h2 align="center">显示全部信息</h2></a>
<a href="zc.jsp"><h2 align="center">增加相关数据</h2></a>
<a href="delete.jsp"><h2 align="center">删除相关内容</h2></a>
<a href="updatesome.jsp"><h2 align="center">修改相关内容</h2></a>
<a  href="selectmore.jsp"><h2 align="center">查找相关内容(可以实现多条件查询)</h2></a>
<a  href="Examine.jsp"><h2 align="center">查找相关内容(单条件查找、按输入的第一个信息查找)</h2></a>
</body>
</html>