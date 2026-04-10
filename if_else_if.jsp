<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>학점 계산</b><br>


<%
int jumsu =91;
String hakjum = "";

if((jumsu <= 100) && (jumsu >= 90)) {
hakjum = "A";
} else if ((jumsu <90) && (jumsu >= 80)) {
hakjum = "B";
} else if ((jumsu <80) && (jumsu >=70)) {
	hakjum ="c";
} else if (( jumsu <70) && (jumsu >= 60)) {
	hakjum = "D";
} else if ((jumsu < 60) && (jumsu >=0)) {
	hakjum ="F";
}else{
	hakjum = "점수오류";
}
%>

점수 = <%=jumsu  %><br>
학점 = <%=hakjum %>
</body>
</html>