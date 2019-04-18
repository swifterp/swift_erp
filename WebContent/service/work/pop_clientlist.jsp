<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 조회</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function codeSelect(client_code,client_name){
            opener.document.getElementById("client_code").value = client_code;
            opener.document.getElementById("client_name").value = client_name;
            window.close();

	}
</script>
<style>
	table tbody tr:hover {background-color:#eee;}
</style>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>거래처코드</th>
				<th>거래처업종</th>
				<th>거래처명</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
				<tr onclick="javascript:codeSelect('<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>','<%= String.valueOf(lst.get(i).get("CLIENT_NAME")) %>')">
					<td><%= String.valueOf(lst.get(i).get("CLIENT_CODE")) %></td>
					<td><%= lst.get(i).get("CLIENT_DIVISION") %></td>
					<td><%= lst.get(i).get("CLIENT_NAME") %></td>
				</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>