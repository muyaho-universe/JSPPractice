<%--
  Created by IntelliJ IDEA.
  User: dale
  Date: 2022/11/01
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("utf-8");
  String username = request.getParameter("username"); // request 내장 객체 waas 가 알아서 만듦
  String isHeroku = request.getParameter("isHeroku");
  String msg = " ";
  if(isHeroku.equals("1")){
    msg = "야호!! 오늘도 맛간 헤로쿠";
  }
%>

<html>
<head>
  <title>form_ok</title>
</head>
<body>
사용자 이름 : <%=username%> <br/>
Heroku : <%=msg%> <br/>
</body>
</html>
