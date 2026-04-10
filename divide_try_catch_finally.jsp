<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외처리(divide_try_catch_finally.jsp)</title>
</head>
<body>
<b>예외 처리(try_catch_finally)</b><br>
<%
int su1 = 55;
int su2 = 0;
int mok = 0;

try { mok = su1/su2;
} catch (ArithmeticException err) {
out.print("getMessage = " + err.getMessage());
} finally {
%>
<p><%=su1 %> / <%=su2 %> = <%=mok %> <br>
<% 
out.print("su1과 su2 값을 변경한 후 다시 테스트 하여보시오!");
}
%>
</body>
</html>