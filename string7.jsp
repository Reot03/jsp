<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STRING</title>
</head>
<body>
<% // arg0이 지정한 문자들을 arg1가 지정하는 문자들로 변경한다
String str = "가가나나다다라라마마마바바사아아자자차차";
String result = str.replaceAll("[가나다바]", "A");
out.print(result);
%>
</body>
</html>