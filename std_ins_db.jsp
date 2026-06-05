<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
Connection conn=null;
PreparedStatement pstmt = null;

String driverClass = "org.mariadb.jdbc.Driver";
try {
	Class.forName(driverClass);
	out.println("JDBC Driver load 성공!<br>");
} catch (ClassNotFoundException err) {
	out.println("JDBC DRiver load 실패!!<br>");
}

String url = "jdbc:mariadb://localhost:2400/univ";
String id = "root";
String pw = "admin";

try {
	conn = DriverManager.getConnection(url,id,pw);
	out.println("데이터베이스 연결 성공!<br>");
	
	request.setCharacterEncoding("UTF-8");
	
	String hakbun = request.getParameter("hakbun");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String dept = request.getParameter("dept");
	String addr = request.getParameter("addr");
	
	String sql = "insert into student values (?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, hakbun);
	pstmt.setString(2, name);
	pstmt.setString(3, year);
	pstmt.setString(4, dept);
	pstmt.setString(5, addr);
	pstmt.executeUpdate();
	out.println("학생 테이블 튜플 삽입 성공!<Br>");

} catch (SQLException sqlerr) {
	out.println("학생 테이블 튜플 삽입실패!! <br>");
	out.println(sqlerr.getMessage() + "<br>");
} finally {
	if(pstmt != null) {
		try {
			pstmt.close();
			out.println("Statement_close!<br>");
		} catch (SQLException sqlerr) {}
	}
	if (conn != null) {
		try {
			conn.close();
			out.println(" maria db 서버 연결 종료! <br>");
		} catch (Exception err) {}
	}
}

%>

<a href="./std_ins_form.jsp">[학생 정보 입력 폼]</a>
</body>
</html>