<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서목록</title>
<%@ include file="../common/ui_common.jsp" %>
<style>
	table tbody tr:hover {background-color:#eee;}
</style>
</head>
<body>
<script>
<%
	String i=String.valueOf(request.getAttribute("i"));
%>

	function ApprovaldeptSelect(empno,emp_name){
            opener.document.getElementById("approval_empno<%=i%>").value = empno;
            opener.document.getElementById("approval_emp_name<%=i%>").value = emp_name;
            window.close();
	}
	</script>

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
				for(int j=0;j<lst.size();j++){
		%>
		<tbody>
				<tr onclick="javascript:ApprovaldeptSelect('<%= Integer.parseInt(String.valueOf(lst.get(j).get("EMPNO"))) %>','<%= String.valueOf(lst.get(j).get("EMP_NAME")) %>')">
					<td><%= String.valueOf(lst.get(j).get("DNAME")) %></td>
					<td><%= Integer.parseInt(String.valueOf(lst.get(j).get("EMP_NUMBER"))) %></td>
					<td><%= lst.get(j).get("EMP_NAME") %></td>
					<td><%= lst.get(j).get("RANK_NAME") %></td>
				</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>