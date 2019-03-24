<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직급목록</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script>
	function rankSelect(){
            opener.document.getElementById("p_rank_no").value = document.getElementById("c_rank_no").value
            opener.document.getElementById("p_rank_name").value = document.getElementById("c_rank_name").value
            window.close();
	}
</script>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>직급코드</th>
				<th>직급명</th>
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
				<td><%= String.valueOf(lst.get(i).get("RANK_NO")) %></td>
				<td><%= lst.get(i).get("RANK_NAME") %></td>
				<td>
					<input id="c_rank_no" type="hidden" value="<%= String.valueOf(lst.get(i).get("RANK_NO")) %>"/>
					<input id="c_rank_name" type="hidden" value="<%= String.valueOf(lst.get(i).get("RANK_NAME")) %>"/>
					<a class="btn btn-primary" onclick="javascript:rankSelect()">선택</a>
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