<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 조회</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function codeSelect(deptno, dname){
            opener.document.getElementById("deptno").value = deptno;
            opener.document.getElementById("dname").value = dname;
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
				<th>부서번호</th>
				<th>상위부서</th>
				<th>하위부서</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
				<tr onclick="javascript:codeSelect('<%= Integer.parseInt(String.valueOf(lst.get(i).get("DEPTNO"))) %>','<%= String.valueOf(lst.get(i).get("DNAME")) %>')">
					<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
					<td><%= lst.get(i).get("PARENT_DNAME") %></td>
					<td><%= lst.get(i).get("DNAME") %></td>
				</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>