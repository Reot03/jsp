<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1차원 배열과 활용</title>
</head>
<body>
<b>1차원 배열 성적처리</b><br>

<%
int jumsu[] = {89,90,91};

String title[] = {"JSP","HTML", "Java", "총점", "평균"};

int total = 0;
float average = 0;

total = jumsu[0] + jumsu[1] + jumsu[2];
average = total / 3;
%>
<%-- 성적처리 결과출력 - 1차원 배열출력 --%>
<%=title[0]%> = <%=jumsu[0] %><Br>
<%=title[1] %> = <%=jumsu[1] %><Br>
<%=title[2] %> = <%= jumsu[2] %><p>

<%=title[3] %> = <%=total %><br>
<%=title[4] %> = <%=average %>
</body>
</html>