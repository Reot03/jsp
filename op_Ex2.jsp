<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증강 연산자</title>
</head>
<body>
<%
int a=3,b=3,c=3;

a+=2;
b*=2;
c%=2;
out.print("a=" + a + ", b=" + b +", c=" + c + "<br>");

int d=3;
//중간연산자
a = d++; //a=3, d=4
out.print("a=" + a + " , d=" + d + "<br>");
a = ++d; //d=5, a=5
out.print("a=" + a + ", d=" + d + "<br>");
a = d--;
out.print("a=" + a + ", d=" + d + "<br>");
a = --d;
out.print("a=" + a + ", d=" + d + "<br>");
%>
</body>
</html>