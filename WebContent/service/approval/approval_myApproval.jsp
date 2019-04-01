<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ���� ��ü ��ȸ</title>
</head>
<body>

<h2>�� ���� ���� ��ȸ</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr> 
			<th>No.</th>
			<th>����</th>
			<th>�������</th>
			<th>�����</th>
			<th>DRAFT_REFERENCE</th>
			<th>������</th>
			<th>DRAFT_STYLE</th>
			<th>����</th>
			<th>DRAFT_CONTENT</th>
			<th>DRAFT_NAME</th>
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