<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내 결제 전체 조회</title>
</head>
<body>

<h2>내 결제 내역 조회</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr> 
			<td>DRAFT_NO</td>
			<td>DRAFT_TITLE</td>
			<td>DRAFT_DATE</td>
			<td>DRAFT_WRITER</td>
			<td>DRAFT_REFERENCE</td>
			<td>DRAFT_OWNER</td>
			<td>DRAFT_STYLE</td>
			<td>DRAFT_DIVISION</td>
			<td>DRAFT_CONTENT</td>
			<td>DRAFT_NAME</td>
			
		</tr>
	</thead>
    <tbody>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tr>
			<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %> </td>
			<td><%= lst.get(i).get("DRAFT_TITLE") %> </td>
			<td><%= String.valueOf(lst.get(i).get("DRAFT_DATE")).substring(0,10) %> </td>
			<td><%= lst.get(i).get("DRAFT_WRITER") %> </td>
			<td><%= lst.get(i).get("DRAFT_REFERENCE") %> </td>
			<td><%= lst.get(i).get("DRAFT_OWNER") %> </td>
			<td><%= lst.get(i).get("DRAFT_STYLE") %> </td>
			<td><%= lst.get(i).get("DRAFT_DIVISION") %> </td>
			<td><%= lst.get(i).get("DRAFT_CONTENT") %> </td>
			<td><%= lst.get(i).get("DRAFT_NAME") %> </td>
		</tr>
		<%
				}
			}
	 	%>
    </tbody>
</table>

</body>
</html>