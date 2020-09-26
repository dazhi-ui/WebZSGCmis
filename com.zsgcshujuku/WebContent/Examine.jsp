<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  >

<form   action="UserServlet?method=examine"    method="post"  >

<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>

<h2 > 按第一个不为空的消息进行检查</h2>
       <table>
     
       <tr>
	<td>编号：</td>
          <td><input type="text"  placeholder="请输入学生编号" id="id3" name="id3" style=" border-color:Lime;border-radius:6px;"    />
	     </tr>
	<tr>
	<td>名字：</td>
          <td><input type="text"  placeholder="请输入学生姓名" id="name3" name="name3" style=" border-color:Lime;border-radius:6px;"    />
	     </tr>
	     <tr><td></td><td>
	<span id="name2"></span></td>
	
           <tr>
           <td>
	出生年月：</td>
	<td><input type="date" id="chusheng3" name="chusheng3" placeholder="请输入出生时间"  style="  border-color:Lime;border-radius:6px;"    /></td>
	</tr>
<tr><td><td>	<input type="submit" value="进行查找"  style="background-color:CornflowerBlue;border-radius:4px;" >
    <input type="submit" value="重置"  style="background-color:CornflowerBlue;border-radius:4px;" >
    </td></tr>
    </table>



<a href="Themain.jsp"><h3 align="center">点击此处回到主页面!!!!!!</h4></a>

		

</form>
</body>
</html>