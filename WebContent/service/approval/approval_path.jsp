<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재라인조회 </title>
<%@ include file="../common/ui_common.jsp" %>
<style>
	table tbody tr:hover {background-color:#eee;}
</style>

</head>
<body>
	<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			System.out.println(lst);
			if(lst != null){
		%>
	<table class="table">
		<thead>
			<tr>
				<th>No.<%= String.valueOf(lst.get(0).get("PATH_DRAFT_CODE")) %></th>
				<th>결재자</th>
				<th>상태</th>
				
			</tr>
		</thead>
	
		<tbody>
				<tr>
					<% for(int j=0; j<lst.size(); j++){
					%>
				<td><%= String.valueOf(lst.get(j).get("PATH_ORDER"))%>차 결재자</td>
				<td><%= String.valueOf(lst.get(j).get("EMP_NAME")) %></td>
				<td><%= String.valueOf(lst.get(j).get("PATH_STATE")) %></td>
				</tr>
				<%
				} 
				%>
					
			
		</tbody>
		<%
				}
			
		%>
	</table>
</body>
</html>