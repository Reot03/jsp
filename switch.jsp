<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>대학의 학년</b><br>

<%
int year = 3;
String msg = null;


switch(year) {

case 1 : msg = "freshman";
break;

case 2 : msg = "sophomore";
break;

case 3 : msg = "junior";
break;

case 4 : msg = "senior";
break;

default : msg = "학년오류";
}

%>

대학의  <%=year %>학년은 <%=msg %>입니다.
</body>
</html>