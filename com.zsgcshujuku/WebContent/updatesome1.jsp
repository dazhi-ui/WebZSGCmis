<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body  >
<form action="UserServlet?method=update"  method="post"  >
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
          <td><input type="text"  placeholder="请输入学生姓名" id="name6" value="${user3.name}"   name="name6" style=" border-color:Lime;border-radius:6px;"  required="required"  />
	     </tr>
	     <tr><td></td><td>
	<span id="name2"></span></td>
	<tr><td>
	身份证号：</td>
	<td><input type="text" placeholder="请输入身份证号" id="shenfen6" value="${user3.shenfen}"  name="shenfen6"  style=" border-color:Lime;border-radius:6px;" required="required"  />
	</td>
	<tr><td>
	  籍贯：</td>
	  <td><input type="text" id="jiguan6" name="jiguan6" value="${user3.jiguan}"   placeholder="请输入籍贯" style=" border-color:Lime;border-radius:6px;" required="required" /></td>
	  </tr>
	  <tr>
	  <td>
           电话：</td>
           <td><input type="text" id="dianhua6" value="${user3.dianhua}"  name="dianhua6" placeholder="请输入电话" style=" border-color:Lime;border-radius:6px;" required="required" /></td>
           </tr>
           <tr>
	  <td>
           专业：</td>
           <td><input type="text" id="zhuanye6" name="zhuanye6" value="${user3.zhuanye}" placeholder="请输入专业" style=" border-color:Lime;border-radius:6px;" required="required" /></td>
           </tr>
           <tr>
           <td>
	出生年月：</td>
	<td><input type="date" id="chusheng6" name="chusheng6" value="${user3.chusheng}"  placeholder="请输入出生时间"  style="  border-color:Lime;border-radius:6px;"   required="required"  /></td>
	</tr>
	<tr>
	<td>
	备注：</td>
	<td>
	
	<textarea id="beizhu6" name="beizhu6" rows="8" cols="35"  style=" border-color:Lime;border-radius:6px;"  placeholder="请输入备注">
    ${user3.beizhu} 
   </textarea></td></tr>
     <tr><td><td>
    <input type="submit" value="确认修改">
	<input type="reset" value="重置">
    </table>


	

	
<br/>
<br/>


</form>
</body>
</html>