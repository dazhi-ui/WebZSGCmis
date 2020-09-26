<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>
</head>
<body text="yellow" style="background: url(images/wen7.jpg); background-size:100%">

<form action="UserServlet?method=search"  method="post" onsubmit="return check()">	
<table>
<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	<tr><td>账户：</td><td><input type="text" name="zhanghu" id="zhanghu" style=" border-color:Lime;border-radius:6px;" placeholder="请输入账户" /><br><br>
	</td></tr>
	<tr><td>密码：</td><td><input type="password" name="psw" id="psw" style=" border-color:Lime;border-radius:6px;" placeholder="请输入密码" /><br><br>
	</td></tr>
	<td>验证码：</td>
    <td><input type="text" style=" border-color:Lime;border-radius:6px;"  size=18   name="code" placeholder="请输入验证码" id="code" maxlength="4" value=""   /> </td>
    <td>
    <img name="img" src="image.jsp" width="50" id="img" onclick="javascript:document.getElementById('img').setAttribute('src', 'image.jsp?' + Math.random())">
    </tr>
    <tr></tr>
    </table>
    <input type="submit" value="登录">
    <input type="reset" value="重置">
    <a href="Themain.jsp"><h3 align="left">点击此处回到主页面!!!!!!</h4></a>
   
    
    </form>
<script  type="text/javascript">
function check()
{
	var zhanghu1=document.getElementById("zhanghu");
	var mima1=document.getElementById("psw");
	var yanzhang1=document.getElementById("code");
	
    if(zhanghu1.value=="")
	{
	alert("用户名不能为空请填写");
	zhanghu1.focus();
	return false;
	}
	if(mima1.value=="")
	{
		alert("密码不能为空请填写");
	  mima1.focus();
	  return false;
	}
	if(yanzheng1.value=="")
	{
		alert("验证码不能为空请填写");
	yanzheng1.focus();
	return false;
	}
}
</script>
</body>
</html>