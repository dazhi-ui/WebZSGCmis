<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询页面</title>

<script>
var i=1;
var j=1;
document.getElementById('number1').value=i;
document.getElementById('number2').value=j;
function demoDisplay(){
	if(document.getElementById("p2").style.display=="none"){
		i++;
		j++;
		document.getElementById("p2").style.display="inline";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
// 		alert(i);
// 		alert(j);
		return;
	}else if(document.getElementById("p3").style.display=="none")
		{
			i++;
			j++;
			document.getElementById("p3").style.display="inline";
			document.getElementById('number1').value=i;
			document.getElementById('number2').value=j;
// 			alert(i);
// 			alert(j);
			return;
		}
}
function demoVisibility(){
	 if(document.getElementById("p3").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p3").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}else if(document.getElementById("p2").style.display=="inline")
	{
		i--;
		j--;
		document.getElementById("p2").style.display="none";
		document.getElementById('number1').value=i;
		document.getElementById('number2').value=j;
		//System.out.println("i:"+i+"j"+j);
		return;
	}
}
</script>

</head>
<body>
<%
	Object message=request.getAttribute("message");
	if(message!=null&&!"".equals(message)){
		%>
	
	<script type="text/javascript">
		alert("<%=request.getAttribute("message")%>");
	</script>
 <%}%>
<form  action="Servlet" method="post">
<br>
&nbsp;&nbsp;
<button type="button" onclick="demoDisplay()" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">+</i></button>
<button type="button" onclick="demoVisibility()" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon">-</i></button><br>

&nbsp;&nbsp;
<div id="p1">
&nbsp;&nbsp;
	<select name="g22" style="visibility:hidden">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s1" >
	<option>名字</option>
	<option>学生编号</option>
	<option>出生年月</option>
	
	</select>
	<input type="text" name="shuru1" value="" />
	<select name="c1">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>

<div id="p2" style="display:none">
&nbsp;&nbsp;
	<select name="g1" >
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s2">
	<option>名字</option>
	<option>学生编号</option>
	<option>出生年月</option>
	</select>
	<input type="text" name="shuru2" value="" />
	<select name="c2">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>

<div id="p3" style="display:none">
&nbsp;&nbsp;
<select name="g2">
	<option value="且">且</option>
	<option value="或">或</option>
	</select>
	<select name="s3">
	<option>名字</option>
	<option>学生编号</option>
	<option>出生年月</option>
	</select>
	<input type="text" name="shuru3" value="" />
	<select name="c3">
	<option>精确</option>
	<option>模糊</option>
	</select>
	<br>
</div>


<p hidden>
<input type="text" value="1" id="number1" name="number1">
<input type="text" value="1" id="number2" name="number2">
</p>
<br>
    <input type="submit" name="submit" value="查询" >
  </form>
  <br>
<h4 align="left">
<%--  一共查询到了<span style="color:red"><%=list.size() %></span>条数据  --%>
</h4>
<table class="table table-striped">
<a href="Themain.jsp"><h3 align="left">点击此处回到主页面!!!!!!</h4></a>
 </table>

</body>
</html>