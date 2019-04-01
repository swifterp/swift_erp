<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처조회</title>
</head>
<body>

<h2>업무일지목록</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr>
			<td>CLIENT_DIVISION</td>
			<td>CLIENT_NAME</td>
			<td>CLIENT_TEL</td>
			<td>CLIENT_ADDRESS</td>
			<td>CLIENT_CONTENT</td>
			
		</tr>
	</thead>
    <tbody>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tr>
			<td><%= lst.get(i).get("CLIENT_DIVISION") %> </td>
			<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
			<td><%= lst.get(i).get("CLIENT_TEL") %> </td>
			<td><%= lst.get(i).get("CLIENT_ADDRESS") %> </td>
			<td><%= lst.get(i).get("CLIENT_CONTENT") %> </td>
		</tr>
		<%
				}
			}
	 	%>
    </tbody>
</table>

</body>
</html>