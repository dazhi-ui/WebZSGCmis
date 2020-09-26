<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
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
   font-size:18px;
   font-family:"楷体";/*设置字体*/
   font-weight:2px;
 }
h1 
{
color:red; 
font-size:44px;}
</style>
<body text="red" >
 <div align="center">
        <h1 style="color: red;" align="center"> 所有成员信息列表</h1>
        <table width="900">
             <tr>
              <td> <h3 style="color: yellow;">名字</h3></td>
                <td><h3 style="color: yellow;">身份证号</h3></td>
                 <td><h3 style="color: yellow;">籍贯</h3></td>
                 <td><h3 style="color: yellow;">电话</h3></td>
                 <td><h3 style="color: yellow;">出生年月</h3></td>
                <td><h3 style="color: yellow;">专业</h3></td>
                <td><h3 style="color: yellow;">备注</h3></td>
             </tr>
             <c:forEach items="${Thething1}" var="item" >
          <tr>
                  <td>${item.name}</td>
                    <td>${item.shenfen}</td>
                   <td>${item.jiguan}</td>
                     <td>${item.dianhua}</td>
                     <td>${item.chusheng}</td>
                      <td>${item.zhuanye}</td>
                     <td>${item.beizhu}</td>
                  
             
                     <td><a href="UserServlet?method=delete&name=${item.name}" onclick="return check()">删除</a>
                 </tr>
             </c:forEach>
            
    
        </table>
         <script type="text/javascript">
          function check() {
            if (confirm("真的要删除吗？")){
                return true;
            }else{
                return false;
            }
          }
          </script>
        
                <a href="Themain.jsp"><h2 align="center">点击此处返回主页面</h2></a>
</html>