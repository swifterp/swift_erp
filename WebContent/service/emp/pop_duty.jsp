<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책목록</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script>
	function dutySelect(duty_no,duty_name){
            opener.document.getElementById("p_duty_no").value = duty_no;
            opener.document.getElementById("p_duty_name").value = duty_name;
            window.close();
	}
</script>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>직책코드</th>
				<th>직책명</th>
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
				<td><%= String.valueOf(lst.get(i).get("DUTY_NO")) %></td>
				<td><%= lst.get(i).get("DUTY_NAME") %></td>
				<td>
					<a class="btn btn-primary" onclick="javascript:dutySelect('<%= String.valueOf(lst.get(i).get("DUTY_NO")) %>','<%= String.valueOf(lst.get(i).get("DUTY_NAME")) %>')">선택</a>
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