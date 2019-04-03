<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서조회</title>
</head>
<body>

<h2>업무일지목록</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr>
			<td>log_no</td>
			<td>log_date</td>
			<td>log_dept</td>
			<td>log_client</td>
			<td>log_project</td>
			<td>log_content</td>
		</tr>
	</thead>
    <tbody>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tr>
			<td><%= String.valueOf(lst.get(i).get("LOG_NO")) %> </td>
			<td><%= String.valueOf(lst.get(i).get("LOG_DATE")).substring(0,10) %> </td>
			<td><%= lst.get(i).get("DNAME") %> </td>
			<td><%= lst.get(i).get("LOG_CLIENT") %> </td>
			<td><%= lst.get(i).get("LOG_PROJECT") %> </td>
			<td><%= lst.get(i).get("LOG_CONTENT") %> </td>
		</tr>
		<%
				}
			}
	 	%>
	 	
    </tbody>
</table>



</body>
</html>