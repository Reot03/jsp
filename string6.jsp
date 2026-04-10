<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRING</title>
</head>
<body>
<% //arg0이 지정한 문자들을 arg1가 지정하는 문자들로 변경 //replace(char arg0, char arg1);
String str = "저는 사과를 좋아합니다. 사과는 아주 맛있습니다.";
String result = str.replace("사과","배");
out.print(result);
%>
</body>
</html>