<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
</head>
<body    >
<%--onsubmit="return chackall()" --%>
<form action="UserServlet?method=add"  method="post"  onsubmit="return chackall()" >
<%
	     Object message = request.getAttribute("message");//放置一个字符串，并取出
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	<table>
	<tr>
	<td>名字：</td>
          <td><input type="text"  placeholder="请输入学生姓名" id="name" name="name" style=" border-color:Lime;border-radius:6px;"  required="required"  />
	     </tr>
	     <tr><td></td><td>
	<span id="name2"></span></td>
	<tr><td>
	身份证号：</td>
	<td><input type="text" placeholder="请输入身份证号" id="shenfen" name="shenfen"  style=" border-color:Lime;border-radius:6px;" required="required"  />
	</td>
	<tr><td>
	  籍贯：</td>
	  <td><input type="text" id="jiguan" name="jiguan" placeholder="请输入籍贯" style=" border-color:Lime;border-radius:6px;" required="required" /></td>
	  </tr>
	  <tr>
	  <td>
           电话：</td>
           <td><input type="text" id="dianhua" name="dianhua" placeholder="请输入电话" style=" border-color:Lime;border-radius:6px;" required="required" /></td>
           </tr>
           <tr>
           <td>
	出生年月：</td>
	<td><input type="date" id="chusheng" name="chusheng" placeholder="请输入出生时间"  style="  border-color:Lime;border-radius:6px;"   required="required"  /></td>
	</tr>
	<tr>
	<td>
	 <tr>
	  <td>
           专业：</td>
           <td><input type="text" id="zhuanye" name="zhuanye" placeholder="请输入专业" style=" border-color:Lime;border-radius:6px;" required="required" /></td>
           </tr>
           <tr>
           <td>
	备注：</td>
	<td>
	
	<textarea id="beizhu" name="beizhu" rows="8" cols="35"  style=" border-color:Lime;border-radius:6px;"  placeholder="请输入备注">
</textarea></td></tr>
     <tr><td><td>
	<input type="submit" value="添加">
    <input type="reset" value="重置">
    </table>
	<a href="Themain.jsp"><h3 align="left">点击此处回到主页面!!!!!!</h4></a>
       <script type="text/javascript">
       $(function(){
			$("#name").blur(function(){
				var ww=$("#name").val();
				
				$.post(
						"/com.zsgcshujuku/wen",
						{"name4":ww},
						
						function(data)
						{
							var wen1=data.wen1;
							var wen2="";
							if(wen1)
								{
								wen2="该名字已经出现过了，不可用";
								$("#name2").css("color","red");
								}
							else 
								{
								wen2="该名字可以使用";
								$("#name2").css("color","green");
								}
							$("#name2").html(wen2);
						},
						"json"
				);
				
			});
		});
      
      </script> 
      </form>
      </body>
      </html>
 
	
	
	
	
	
	
	
	
	
	
	