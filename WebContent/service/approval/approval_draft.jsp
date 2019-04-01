<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기안서 조회 페이지</title>
</head>
<body>

<h2>기안서조회</h2>
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

<form action="../approval/selectDraftDetail">
상세보기<p>
기안서 번호 
<input type="text" name="draft_num">
<br>

<input type="submit" value="검색">
</form> 

</body>
</html>