<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서목록</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script>
	function deptSelect(deptno,dname){
            opener.document.getElementById("p_dept_no").value = document.getElementById("c_dept_no").value
            opener.document.getElementById("p_dept_name").value = document.getElementById("c_dept_name").value
            window.close();
	}
</script>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>부서코드</th>
				<th>부서명</th>
				<th>선택</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
			<tr>
				<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
				<td><%= lst.get(i).get("DNAME") %></td>
				<td>
					<input id="c_dept_no" type="hidden" value="<%= String.valueOf(lst.get(i).get("DEPTNO")) %>"/>
					<input id="c_dept_name" type="hidden" value="<%= String.valueOf(lst.get(i).get("DNAME")) %>"/>
					<a class="btn btn-primary" onclick="javascript:deptSelect(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>,<%= String.valueOf(lst.get(i).get("DNAME")) %>)">선택</a>
				</td>
			</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>