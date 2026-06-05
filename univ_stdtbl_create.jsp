<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생테이블 스키마 생성</title>
</head>
<body>

<%
Connection conn = null;
PreparedStatement pstmt = null;


String driverClass = "org.mariadb.jdbc.Driver"; 
String url = "jdbc:mariadb://localhost:2400/univ?characterEncoding=UTF-8";
String id = "root";
String pw = "admin";

try {

    Class.forName(driverClass);
    out.println("JDBC Driver load 성공! <br>");
    
    conn = DriverManager.getConnection(url, id, pw);
    out.println("MariaDB 서버 연결 성공 ! <br>");
    
    String sql = "INSERT INTO student VALUES "
            + "('160001', '한국인', '4', '컴공', '서울'), "
            + "('195712', '조아라', '1', '멀티', '부산'), "
            + "('179752', '홍길동', '3', '전상', '광주'), "
            + "('184682', '나매력', '2', '전상', '제주'), "
            + "('172634', '이천사', '3', '컴공', '광주'), "
            + "('183517', '김보배', '2', '멀티', '전남'), "
            + "('160739', '신입생', '4', '컴공', '광주'), "
            + "('2022011984', '전우진', '3', 'AI', '청주')"; 
    
    pstmt = conn.prepareStatement(sql);
    pstmt.executeUpdate();
    out.println("학생 테이블 (student) 생성 성공!<br>");

} catch (ClassNotFoundException err) {
    out.println("JDBC Driver load 실패!! 기입한 드라이버명을 확인하거나 build path에 jar 파일이 있는지 확인하세요.<br>");
} catch (SQLException sqlerr) {
    out.println("데이터베이스 처리 중 오류 발생!!<br>");
    out.println("에러 메시지: " + sqlerr.getMessage() + "<br>");
} finally {
    // 4. 자원 해제
    if (pstmt != null) {
        try {
            pstmt.close();
            out.println("Statement_close!<br>");
        } catch (SQLException sqlerr) {}
    }
    if (conn != null) {
        try{
            conn.close();
            out.println("MariaDB 서버 연결 종료<br>");
        } catch (Exception conerr){}
    }
}
%>
</body>
</html>