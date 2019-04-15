<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직급목록</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function rankSelect(rank_no,rank_name){
            opener.document.getElementById("p_rank_no").value = rank_no;
            opener.document.getElementById("p_rank_name").value = rank_name;
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
				<th>직급코드</th>
				<th>직급명</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
			<tr onclick="javascript:rankSelect('<%= String.valueOf(lst.get(i).get("RANK_NO")) %>','<%= String.valueOf(lst.get(i).get("RANK_NAME")) %>')">
				<td><%= String.valueOf(lst.get(i).get("RANK_NO")) %></td>
				<td><%= lst.get(i).get("RANK_NAME") %></td>
			</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>