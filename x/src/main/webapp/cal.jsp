<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%
	
	Calendar cal = Calendar.getInstance();
	int y = cal.get(Calendar.YEAR); //2022
	int m = cal.get(Calendar.MONTH); 
	
	try {
		y = Integer.parseInt(request.getParameter("y")); 
	} catch(Exception e) {
		y = cal.get(Calendar.YEAR);
		e.printStackTrace();
	}
	try {
		m = Integer.parseInt(request.getParameter("m"));
	} catch(Exception e) {
		m = cal.get(Calendar.MONTH);
		e.printStackTrace();
	}
	
	
	
	cal.set(y,m,1);
	int startday = cal.get(Calendar.DAY_OF_WEEK); //2
	int lastday = cal.getActualMaximum(Calendar.DATE);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-size: 9px;
	color: #555555;
}

table {
	border-collapse: collapse;
}

th, td {
	border: 1px solid #cccccc;
	width: 50px;
	height: 25px;
	text-align: center;
}

caption {
	margin-bottom: 10px;
	font-size: 15px;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" align="center" style="border:none; text-align:right; height:40px;">
			<a href="?year=<%=y-1 %>&month=<%=m %>">◃◃</a>
			</td>
			<td colspan="3" align="center" style="border:none; text-align:center; height:40px; font-size:18pt;">
			<%=y %>년 <%=m %>월
			</td>
		</tr>
		<tr>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
		<tr>

			<%
		int count = 0;
		//1일을 출력하기 전 빈칸 출력
	
		for(int s=1; s<startday; s++){
			out.println("<td></td>");
			count++;
		}
		
		for(int i=1; i<=lastday; i++){ //날짜 출력
			count++;
	%>
			<td> <%=i %> </td>
			<%	
		if(count%7 == 0){ //7칸씩 나누기
			out.println("</tr><tr>");
		}
		}
	%>
		</tr>
	</table>
</body>
</html>