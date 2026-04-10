<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRING</title>
</head>
<body>
<% // 주어진 정규표현식과 일치하는지 여부를 확인하는 함수 (정확히 일치해야함)
String str = "jsp test";
out.print(str.matches("JSP Test"));
%>
</body>
</html>