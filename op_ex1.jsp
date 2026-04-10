<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산술연산자</title>
</head>
<body>
<%
int num = 723;
int num01 = num / 100;
int num02 = (num % 100) / 10;
int num03 = (num % 100) % 10;
int sum = 0;

out.print("num:" + num+"<br>");
out.print("백의자리수:" + num01 + "  십의자리수 :" + num02 + "  일의자리수 : " + num03 + "<br>");
sum = num01 + num02 + num03;
out.print("숫자의 합:" + sum + "<br>");
out.print("숫자의 곱:" + num01*num02*num03);%>
</body>
</html>