<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원별 출퇴근현황</title>
</head>
<body>
<h2>사원별 출퇴근현황조회</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr>
			<td>ATTEND_DATE</td>
			<td>EMPNO</td>
			<td>EMP_NAME</td>
			<td>ATTEND_TIME</td>
			<td>ATTEND_OPEN</td>
			<td>ATTEND_CLOSE</td>
			
		</tr>
	</thead>
    <tbody>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tr>
			<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")) %> </td>
			<td><%= String.valueOf(lst.get(i).get("EMPNO")) %> </td>
			<td><%= lst.get(i).get("EMP_NAME") %> </td>
			<td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
			<td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
			<td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
		</tr>
		<%
				}
			}
	 	%>
    </tbody>
</table>

</body>
</html>