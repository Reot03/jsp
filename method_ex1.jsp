<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메소드사용</title>
</head>
<body>
<b>메소드 정의와 호출</b><Br>

<%! 
int sum( int a , int b) {
return a+b;
}
%>

5+10 = <%= sum(5,10) %>
</body>
</html>