<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 테이블 학생 정보 검색</title>

<link rel="stylesheet" href ="../common/css/table_retrieval.css">

</head>
<body>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rset = null;


String driverClass = "org.mariadb.jdbc.Driver";

try {
	Class.forName(driverClass);
	out.println("JDBC Driver load 성공!<br>");
} catch (ClassNotFoundException err) {
	out.println("JDBC Driver load 실패!! <br>");
}

String url = "jdbc:mariadb://localhost:2400/univ";
String id = "root";
String pw = "admin";

try {
	conn = DriverManager.getConnection(url,id,pw);
	out.println("데이터베이스 연결 성공! <br>");
	
	String sql = "SELECT * FROM student ORDER BY hakbun ACS";
	pstmt = conn.prepareStatement(sql);
	rset = pstmt.executeQuery();
%>

<form name="student_form_table">
<table>
<caption>학생 정보 검색</caption>
<tr>
<th>학 번</th>
<th>이 름</th>
<th>학 년</th>
<th>학 과</th>
<th>주 소</th>
</tr>
<%
while (rset.next()) {
String hakbun = rset.getString("hakbun");
String name = rset.getString("name");
String year = rset.getString("year");
year = year + "학년";
String dept = rset.getString("dept");
String addr = rset.getString("addr");
%>

<tr>
<td><%= hakbun %></td>
<td><%= name %></td>
<td><%= year %></td>
<td><%= dept %></td>
<td><%= addr %></td> 
</tr>
<%
	}
} catch (SQLException sqlerr) {
out.println("SQL 질의처리 오류!!" + "<br>");
out.println(sqlerr.getMessage() + "<br>");
} finally {
	if (rset != null) {
		try {
			rset.close();
			out.println("ResultSet_Close!!<br>");
		} catch (SQLException sqlerr) {}
	}
	if (pstmt != null) {
		try {
			pstmt.close();
			out.println("Statement_close!<br>");
		} catch (SQLException sqlerr) {}
	}
	if (conn != null) {
		try {
			conn.close();
			out.println("mariadb 서버연결 종료!<br>");
		} catch (Exception conerr) {}
	}
}
%>

</table>
</form>
</body>
</html>