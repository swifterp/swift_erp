<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기안서 조회 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_approval.jsp" %>
		<div class="contents">
			<h2>기안서조회</h2>		
			<form action="../approval/selectDraftDetail">
				<div class="input-group">
					<input type="text" class="form-control" name="draft_num" placeholder="기안서 번호">
					<span class="input-group-btn" style="width:100px;">	
						<input type="submit" class="btn btn-primary" style="margin-bottom:20px;" value="검색">
					</span>
				</div>
			</form> 
			<table class="table">
				<thead>
					<tr> 
						<th>No.</th>
						<th>기안일자</th>
						<th>작성자</th>
						
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
						<td><%= String.valueOf(lst.get(i).get("DRAFT_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("DRAFT_WRITER") %> </td>
					
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