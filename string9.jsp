<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRING</title>
</head>
<body>
<% //arg0위치부터 끝까지 부분 문자열 리턴
String str = "ABCDEFG";
String result = str.substring(4);
out.print(result);
%>
</body>
</html>