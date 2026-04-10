<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2차원 배열과 활용</title>
</head>
<body>
<b>2차원 배열 성적처리</b><br>

<%

int jumsu[][] = {{89,90,91},{79,80,81}};
int total[] = new int[2];
float average[] = new float[2];

total[0] = jumsu[0][0] + jumsu[0][1] + jumsu[0][2];
total[1] = jumsu[1][0] + jumsu[1][1] + jumsu[1][2];
average[0] = total[0] /3;
average[1] = total[1] /3;
%>

1형 1열([0][0]) = <%=jumsu[0][0] %><br>
1형 2열([0][1]) = <%=jumsu[0][1] %><br>
1형 3열([0][2]) = <%=jumsu[0][2] %><br>
학생1 총점 = <%=total[0] %>  평균 = <%=average[0] %><p>

2형 1열([1][0]) = <%=jumsu[1][0] %><br>
2형 2열([1][1]) = <%=jumsu[1][1] %><br>
2형 3열([1][2]) = <%=jumsu[1][2] %><br>
학생2 총점 = <%=total[1] %> 평균 = <%=average[1] %>

</body>
</html>