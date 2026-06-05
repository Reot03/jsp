<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대학 데이터베이스</title>
</head>
<body>
<% 
Connection conn = null;
PreparedStatement pstmt = null;

String driverClass = "org.mariadb.jdbc.Driver";

try{
	Class.forName(driverClass);
	out.println("JDBC Driver load 성공!<br>");
} catch (ClassNotFoundException err) {
	out.println("JDBC Driver load 실패!!... inf/lib폴더확인<br>");
}


String url = "jdbc:mariadb://localhost:2400/";
String id = "root";
String pw = "admin";

try{
	conn = DriverManager.getConnection(url,id,pw);
	out.println("MariaDB 서버 연결성공!<br>");
	
	String sql = "CREATE DATABASE univ";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	out.println("대학 데이터베이스 생성 성공!<Br>");
} catch (SQLException sqlerr) {
	out.println("대학 데이터베이스 생성 실패!<br>");
	out.println(sqlerr.getMessage() + "<br>");
} finally {
	if(pstmt != null) {
		try {
			pstmt.close();
			out.println("Statement_close!<br>");
		} catch (Exception conerr) {}
	}
}
%>
</body>
</html>