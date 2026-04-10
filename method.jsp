<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메소드 사용</title>
</head>
<body>
<b>매소드 정의와 호출</b><Br>

<%!
public int sum(int para1, int para2) {

int tot;
tot = para1 + para2;
return tot;
}
%>

<% 
int su1 = 1;
int su2 = 10;
int hap = 0;
int fcn_sum = 0;

hap = su1 + su2;
fcn_sum = sum(su1,su2);
%>

<%=su1 %> + <%=su2 %> = <%=hap %><p>
<%=su1 %> + <%=su2 %> = <%=fcn_sum %><Br>
<%=su1 %> + <%=su2 %> = <%=sum(1,10) %>

</body>
</html>