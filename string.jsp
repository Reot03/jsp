<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스트링 클래스 사용</title>
</head>
<body>
<b>스트링 클래스 메소드</b>
<% //변수선언
String univ = "first university";
String UNIV = "FIRST UNIVERSITY";
String msg = "";

int str_len = univ.length();
String sub_str1 = univ.substring(0,4);
String sub_str2 = UNIV.substring(4);
%>

문자열길이(length) : <%=str_len %><br>
부분 문자열(substring) : <%=sub_str1 %> <br>
부분 문자열(substring) : <%=sub_str2 %><p>

<% 
if(univ.isEmpty()){
	msg = "empty";
	} else {
		msg = "not empty";
	}
out.print("isEmpty : " + msg + "<Br>");

if (univ.equals(UNIV.toLowerCase())){
	msg = "equal";
} else {
	msg = "not equal";
}
out.print("toLowerCase : " + msg + "<p>");

out.print("equals : " + univ.equals(univ) + "<Br>");
out.print("matches : "  + univ.matches("university") + "<Br>");
out.print("compareTo : " + univ.compareTo("first university") + "<Br>");
out.print("replace : " + univ.replace("i", "I") + "<Br>");
out.print("replace_all : " + UNIV.replaceAll("RS","rs"));
%>
</body>
</html>