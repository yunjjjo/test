<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/yunjo";
	
	Boolean connect = false;
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"root","12345678");
		
		connect = true;
		
		conn.close();
	} catch(Exception e) {
		connect = false;
		e.printStackTrace();
	}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>
<%if(connect == true) { %>
	연결되었습니다.
<%} else { %>
	연결에 실패하였습니다.
<%} %>
</h3>
</body>
</html>