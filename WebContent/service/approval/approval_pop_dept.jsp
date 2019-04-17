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
	function ApprovaldeptSelect(empno,emp_name){
            opener.document.getElementById("approval_empno").value = empno;
            opener.document.getElementById("approval_emp_name").value = emp_name;
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
				<th>부서</th>
				<th>사원번호</th>
				<th>사원이름</th>
				<th>직급</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
				<tr onclick="javascript:ApprovaldeptSelect('<%= Integer.parseInt(String.valueOf(lst.get(i).get("EMPNO"))) %>','<%= String.valueOf(lst.get(i).get("EMP_NAME")) %>')">
					<td><%= String.valueOf(lst.get(i).get("DNAME")) %></td>
					<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("EMPNO"))) %></td>
					<td><%= lst.get(i).get("EMP_NAME") %></td>
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