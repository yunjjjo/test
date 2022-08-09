<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Calendar"%>
<%
	Calendar cal = Calendar.getInstance();

	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;
	
	String fyear = request.getParameter("year");
	String fmonth = request.getParameter("month");
	
	if(fyear != null){
		year = Integer.parseInt(fyear);
	}
	if(fmonth != null) {
		month = Integer.parseInt(fmonth);
	}
	
	int nowyear = cal.get(Calendar.YEAR);
	int nowmonth = cal.get(Calendar.MONTH)+1;
	
	if(month == 13){
		year++;
		month = 1;
	}
	if(month == 0){
		year--;
		month = 12;
	}
	
	
	cal.set(year,month-1,1);
	
	
	
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int lastday = cal.getActualMaximum(Calendar.DATE);
	
	Calendar preCal = (Calendar) cal.clone(); //복제
	preCal.add(Calendar.DATE, -(day-1));
	
	int preDate = preCal.get(Calendar.DATE);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {width:700px; margin:auto; border-collapse:collapse;}
th {border:1px solid black; padding:5px; width:100px;}
td {border:1px solid black; height:60px; font-size:12pt; padding:10px;}
.gray {color:gray;}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" align="center" style="border:none; text-align:right; height:40px">
			<a href="Calendar.jsp?year=<%=year-1 %>&month=<%=month %>">&lt;&lt;</a>&nbsp;&nbsp;
			<a href="Calendar.jsp?year=<%=year %>&month=<%=month-1 %>">&lt;</a></td>
			<td colspan="3" align="center" style="border:none; text-align:center; height:40px; font-size:18pt;">
			<%=year %>년 <%=month %>월</td>
			<td colspan="3" align="center" style="border:none; text-align:left; height:40px;">
			<a href="Calendar.jsp?year=<%=year %>&month=<%=month+1 %>">&gt;</a>&nbsp;&nbsp;
			<a href="Calendar.jsp?year=<%=year+1 %>&month=<%=month %>">&gt;&gt;</a></td>
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
		
		//1일을 출력하기 전 출력	
		for(int i=1; i<day; i++){
			out.println("<td class='gray'>" + (preDate++) + "</td>");
			count++;
			
		}
		
		for(int i=1; i<=lastday; i++){ //날짜 출력
			count++;
			
			String color = "black";
			if(count == 7) {
				color = "blue";
			} else if(count == 1) {
				color = "red";
			}
			
		
			
	%>
			<td style="color:<%=color %>"><%=i %> </td>
			<%	
		if(count%7 == 0){ //7칸씩 나누기
			out.println("</tr><tr>");
			count = 0;
		}
	}
	//마지막 날짜 뒤 빈칸
	while(count < 7) { 
		out.println("<td></td/>");
		count++;
	}
	%>
	<a href="Calendar.jsp?year=<%=nowyear %>&month=<%=nowmonth %>">today</a> 
	
	</table>	
	 
</body>
</html>