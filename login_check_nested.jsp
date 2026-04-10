<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중첩 선택문 (IF 선택문)</title>
</head>
<body>
<b>로그인 인증</b><br>

<%
String user_id = "admin";
String user_pw = "adminpw";

String login_id = "admin";
String login_pw = "adminpw";
String msg = null;

if (user_id == login_id) {
	if(user_pw == login_pw) {
		msg = "방문을 환영합니다";
	} else {
		msg = "비밀번호가 맞지 않습니다";
	}
} else { 
	msg = "회원가입 후 방문하십시오";
}
%>
사용자 아이디 = <%=user_id %> 사용자 비밀번호 = <%=user_pw %><br>
로그인 아이디 = <%=login_id %> 로그인 비밀번호 = <%=login_pw %><p>
로그인 인증 = <%=msg %>
</body>
</html>