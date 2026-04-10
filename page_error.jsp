<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage = "true"  %> <%--오류페이지 여부설정 --%>
<%@ page errorPage = "./page_error_handler.jsp" %>  <%-- 오류 발생 경우 출력 페이지 지정 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 발생 페이지</title>
</head>
<body>
<b> page 지시문 오류 발생 페이지</b><br>
<%
int su1 = 55;
int su2 = 0;
int mok = 0;

mok = su1 / su2;
%>

<%=su1 %> / <%=su2 %> = <%=mok %>

</body>
</html>