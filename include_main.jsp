<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시문(include 속성)</title>
</head>
<body>
<%-- include 속성 - include_top 페이지 --%>
<%@ include file = "include_top.jsp" %>

<h2>include_main 페이지 영역입니다.</h2>

<%-- include 속성 - include_bottom --%>
<%@ include file="include_bottom.jsp" %>

</body>
</html>