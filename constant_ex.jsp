<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>constant 연습</title>
</head>
<body>
<%
double PI = 3.14;
double radius = 10.0;
double circleArea = radius * radius * PI;
out.print("원의 면적 =" + circleArea);
%>
</body>
</html>