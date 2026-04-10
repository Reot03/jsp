<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Casting 연습</title>
</head>
<body>
<%
out.print(10/4 + "<br>");
out.print(10.0/4 +"<br>");
out.print((int)3.7 + 1.5 +"<br>");
out.print((int)(3.7 + 1.5) + "<br>");
out.print((int)3.7 + (int)1.5);
%>
</body>
</html>