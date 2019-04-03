<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재라인조회 페이지 입니다</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type ="text/javascript" src ="../js/jquery.min.js"></script>
<script type ="text/javascript" src ="../js/bootstrap.js"></script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_approval.jsp" %>	
		<div class="contents">
			<h2>결재라인조회</h2>
			<table class="table">
				<thead>
					<tr> 
						<th>No.</th>
						<th>제목</th>
						<th>기안일자</th>
						<th>기안자</th>
						<th>DRAFT_REFERENCE</th>
						<th>결재자</th>
						<th>DRAFT_STYLE</th>
						<th>구분</th>
						<th>DRAFT_CONTENT</th>
						<th>DRAFT_NAME</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %> </td>
						<td><%= lst.get(i).get("DRAFT_TITLE") %> </td>
						<td><%= String.valueOf(lst.get(i).get("DRAFT_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("DRAFT_WRITER") %> </td>
						<td><%= lst.get(i).get("DRAFT_REFERENCE") %> </td>
						<td><%= lst.get(i).get("DRAFT_OWNER") %> </td>
						<td><%= lst.get(i).get("DRAFT_STYLE") %> </td>
						<td><%= lst.get(i).get("DRAFT_DIVISION") %> </td>
						<td><%= lst.get(i).get("DRAFT_CONTENT") %> </td>
						<td><%= lst.get(i).get("DRAFT_NAME") %> </td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
		</div>
	</div>
</body>
</html>