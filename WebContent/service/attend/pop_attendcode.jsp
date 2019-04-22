<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 항목 조회</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function codeSelect(attend_code,attend_name){
            opener.document.getElementById("attend_code").value = attend_code;
            opener.document.getElementById("attend_name").value = attend_name;
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
				<th>근태코드</th>
				<th>근태명</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
				<tr onclick="javascript:codeSelect('<%= Integer.parseInt(String.valueOf(lst.get(i).get("ATTEND_CODE"))) %>','<%= String.valueOf(lst.get(i).get("ATTEND_NAME")) %>')">
					<td><%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %></td>
					<td><%= lst.get(i).get("ATTEND_NAME") %></td>
				</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>