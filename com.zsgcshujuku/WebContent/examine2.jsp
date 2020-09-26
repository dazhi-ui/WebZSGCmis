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
<body  >
 <div align="center">
        <h1 style="color: red;" align="center"> 具体成员信息如下列表</h1>
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
             <c:forEach items="${Thething2}" var="item" >
          <tr>
                 <td>${item.name}</td>
                    <td>${item.shenfen}</td>
                   <td>${item.jiguan}</td>
                     <td>${item.dianhua}</td>
                     <td>${item.chusheng}</td>
                      <td>${item.zhuanye}</td>
                      <td>${item.beizhu}</td>
                     
                     
                     </td>
                  
                 </tr>
             </c:forEach>
        </table>
                <a href="Themain.jsp"><h2 align="center">点击此处返回主页面</h2></a>
</html>