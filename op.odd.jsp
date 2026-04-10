<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수 짝수 판별</title>
</head>
<body>
<%
int num = 25;

if((num % 2) == 0)
out.print(num + ": 짝수" + "<br>");

else
out.print(num + ": 홀수" + "<br>");
%>
</body>
</html>