<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원목록</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script>
	function empSelect(){
            opener.document.getElementById("p_emp_no").value = document.getElementById("c_emp_no").value
            opener.document.getElementById("p_emp_name").value = document.getElementById("c_emp_name").value
            opener.document.getElementById("p_emp_join_divide").value = document.getElementById("c_emp_join_divide").value
            window.close();
	}
</script>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
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
				<td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></td>
				<td><%= lst.get(i).get("EMP_NAME") %></td>
				<td>
					<input id="c_emp_no" type="hidden" value="<%= String.valueOf(lst.get(i).get("EMPNO")) %>"/>
					<input id="c_emp_name" type="hidden" value="<%= String.valueOf(lst.get(i).get("EMP_NAME")) %>"/>
					<input id="c_emp_join_divide" type="hidden" value="<%= String.valueOf(lst.get(i).get("EMP_JOIN_DIVIDE")) %>"/>
					<a class="btn btn-primary" onclick="javascript:empSelect()">선택</a>
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