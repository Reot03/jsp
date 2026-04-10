<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>큰 수 찾기</b><Br>
<%

int su1 = 91;
int su2 = 49;
int max;

if(su1 >= su2) {
max = su1;
} else {
max = su2;
}
%>

수1 = <%=su1 %> 수2 = <%=su2 %><br>
큰 수 = <%=max %>
</body>
</html>