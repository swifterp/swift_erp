<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원목록</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function empSelect(emp_no,emp_number,emp_name,rank_name,dept_name){
	    opener.document.getElementById("p_emp_no").value = emp_no;
	    opener.document.getElementById("p_emp_number").value = emp_number;
	    opener.document.getElementById("p_emp_name").value = emp_name;
	    opener.document.getElementById("p_emp_rank_name").value = rank_name;
	    opener.document.getElementById("p_emp_dept_name").value = dept_name;
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
				<th>사원번호</th>
				<th>사원명</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
			<tr onclick="javascript:empSelect('<%= String.valueOf(lst.get(i).get("EMPNO")) %>','<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>','<%= lst.get(i).get("EMP_NAME") %>','<%= lst.get(i).get("RANK_NAME") %>','<%= lst.get(i).get("DNAME") %>')">
				<td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></td>
				<td><%= lst.get(i).get("EMP_NAME") %></td>
			</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>