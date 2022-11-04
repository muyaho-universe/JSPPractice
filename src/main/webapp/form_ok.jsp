<%@ page import="java.awt.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("utf-8");
  String firstName = request.getParameter("fname");
  String lastName = request.getParameter("lname");
  String color = request.getParameter("color");
  String age = request.getParameter("age");
  String gender = request.getParameter("gender");
  String birthday = request.getParameter("birthday");
  String major = request.getParameter("uclass");
  String comment = request.getParameter("comment");
  String c_lang = request.getParameter("fav_language[0]");
  String cpp_lang = request.getParameter("fav_language[1]");
  String java_lang = request.getParameter("fav_language[2]");
  String python_lang = request.getParameter("fav_language[3]");
  String ment ="";
  String grade = request.getParameter("grade");
  if(c_lang == null && cpp_lang == null && java_lang == null && python_lang == null){
    ment = "No language I can do";
  } else{
    if(c_lang != null) ment += c_lang +", ";
    if(cpp_lang != null) ment += cpp_lang +", ";
    if(java_lang != null) ment += java_lang +", ";
    if(python_lang != null) ment += python_lang +".";
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>form </title>
</head>
<body>
<div id="top">
  <h3>Welcome <?=$fname?>!</h3>
</div>
<div id="center">
  <div>Name : <%=firstName%> <%=lastName%></div>
  <div>
    Your favorite color:
    <div style="color:<%=color%>; background-color:<%=color%>; width: 50px; height: 50px"/>
  </div>
  <div>Gender : <%=gender%> </div>
  <div>Age: <%=age%></div>
  <div>Favorite language:

    <%=ment%>

  </div>
  <div>Birthday: <%=birthday%></div>
  <div>Major: <%=major%></div>
  <div>Grade: <%=grade%></div>
  <div>
    Comment:<br>
    <%=comment%>
  </div>
</div>

</body>
