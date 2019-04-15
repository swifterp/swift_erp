<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서목록</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function ApprovaldeptSelect(deptno,parent_dname){
            opener.document.getElementById("approval_dept_no").value = deptno;
            opener.document.getElementById("approval_dept_name").value = parent_dname;
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
				<th>부서코드</th>
				<th>부서명</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
				<tr onclick="javascript:ApprovaldeptSelect('<%= Integer.parseInt(String.valueOf(lst.get(i).get("DEPTNO"))) %>','<%= String.valueOf(lst.get(i).get("DNAME")) %>')">
					<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
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