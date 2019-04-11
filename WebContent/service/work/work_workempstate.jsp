<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원별 출퇴근현황</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			<h1>사원별 출퇴근현황조회</h1>
			<table class="table">
				<thead>
					<tr>
						<th>ATTEND_DATE</th>
						<th>사원번호</th>
						<th>사원이름</th>
						<th>ATTEND_TIME</th>
						<th>ATTEND_OPEN</th>
						<th>ATTEND_CLOSE</th>
						
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")) %> </td>
						<td><%= String.valueOf(lst.get(i).get("EMPNO")) %> </td>
						<td><%= lst.get(i).get("EMP_NAME") %> </td>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
						<td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
						<td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
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