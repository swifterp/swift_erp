<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재라인조회 페이지 입니다</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
	function goWriteApprovalPath()
	{
	location.href="../approval/approval_pathwrite.jsp";
	}
</script>
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
						<th>결재라인 제목</th>
						<th>1차 결재자</th>
						<th>2차 결재자</th>
						<th>3차 결재자</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("PATH_CODE"))) %> </td>
						<td><%= lst.get(i).get("PATH_NAME") %> </td>
						<td><%= lst.get(i).get("F_EMP_NAME") %> </td>
						<td><%= lst.get(i).get("S_EMP_NAME") %> </td>
						<td><%= lst.get(i).get("T_EMP_NAME") %> </td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
		<div class="btn_group">
			<a class="btn btn-primary pull-right" onclick="javascript:goWriteApprovalPath()">결제라인등록</a>
		</div>
	</div>
	<!-- <form action="./approval_pathwrite.jsp">
	<input type="submit" value="결제라인등록">
	</form> -->
</body>
</html>