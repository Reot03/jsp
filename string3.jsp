<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRING</title>
</head>
<body>
<% //스트링 비교 두 스트링이 같으면 0, arg0보다 먼저나오면 음수, 아니면 양수리턴
String jsp = "JSP";
String cpp = "C++";
int result = jsp.compareTo(cpp);
out.print(result);
%>
</body>
</html>